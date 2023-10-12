// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AnnouncementModelAdapter extends TypeAdapter<AnnouncementModel> {
  @override
  final int typeId = 1;

  @override
  AnnouncementModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AnnouncementModel(
      message: fields[0] as String,
      filePath: fields[1] as String?,
      likeCount: fields[2] as int?,
      replays: (fields[3] as List?)?.cast<String>(),
      time: fields[4] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, AnnouncementModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.message)
      ..writeByte(1)
      ..write(obj.filePath)
      ..writeByte(2)
      ..write(obj.likeCount)
      ..writeByte(3)
      ..write(obj.replays)
      ..writeByte(4)
      ..write(obj.time);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnnouncementModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
