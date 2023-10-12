import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class AnnouncementModel extends HiveObject {
  @HiveField(0)
  final String message;
  @HiveField(1)
  final String? filePath;
  @HiveField(2)
  final int? likeCount;
  @HiveField(3)
  final List<String>? replays;

  AnnouncementModel(
      {required this.message, this.filePath, this.likeCount, this.replays});
}
