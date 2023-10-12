import 'package:hive_flutter/hive_flutter.dart';
import 'package:kids_buddy/data/models/announcement_model/announcement_model.dart';

class AnnouncementDataProvider {
  Future<Box<AnnouncementModel>> getDbObject() async {
    final announcementDB = await Hive.openBox<AnnouncementModel>('');
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
    db.close();
  }

  //Making singleton
  static AnnouncementDataProvider announcementDataProvider =
      AnnouncementDataProvider._internal();
  factory AnnouncementDataProvider() {
    return announcementDataProvider;
  }
  AnnouncementDataProvider._internal();
}
