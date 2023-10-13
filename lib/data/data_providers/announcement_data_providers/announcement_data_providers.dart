import 'package:hive_flutter/hive_flutter.dart';
import 'package:kids_buddy/data/models/announcement_model/announcement_model.dart';

class AnnouncementDataProvider {
  Future<Box<AnnouncementModel>> getDbObject() async {
    final announcementDB =
        await Hive.openBox<AnnouncementModel>('announcements');
    return announcementDB;
  }

  Future<void> addMessageData(
      {required AnnouncementModel announcementModel}) async {
    final db = await getDbObject();
    await db.add(announcementModel);
    await db.close();
  }

  Future<List<AnnouncementModel>> getAllAnnouncements() async {
    List<AnnouncementModel> announdementList = [];
    final db = await getDbObject();
    announdementList.addAll(db.values);
    await db.close();
    return announdementList;
  }

  Future<void> deleteAnnouncement(int id) async {
    final db = await getDbObject();
    await db.delete(id);
    await db.close();
  }

  Future<void> addReply(AnnouncementModel announcementModel) async {
    final db = await getDbObject();
    AnnouncementModel announcementModelNew = AnnouncementModel(
        message: announcementModel.message,
        time: announcementModel.time,
        replays: announcementModel.replays,
        filePath: announcementModel.filePath,
        likeCount: announcementModel.likeCount);
    await db.put(announcementModel.key, announcementModelNew);
    await db.close();
  }

  Future<void> like(AnnouncementModel announcementModel) async {
    final db = await getDbObject();
    AnnouncementModel announcementModelNew = AnnouncementModel(
        message: announcementModel.message,
        time: announcementModel.time,
        replays: announcementModel.replays,
        filePath: announcementModel.filePath,
        likeCount: announcementModel.likeCount + 1);
    await db.put(announcementModel.key, announcementModelNew);
    await db.close();
  }

  //Making singleton
  static AnnouncementDataProvider announcementDataProvider =
      AnnouncementDataProvider._internal();
  factory AnnouncementDataProvider() {
    return announcementDataProvider;
  }
  AnnouncementDataProvider._internal();
}
