import 'package:hive_flutter/hive_flutter.dart';

part 'announcement_model.g.dart';

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
  @HiveField(4)
  final DateTime time;
  

  AnnouncementModel(
      {required this.message, this.filePath, this.likeCount, this.replays,required this.time});
}
