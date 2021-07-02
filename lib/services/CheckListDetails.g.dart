// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../models/CheckListDetails.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CheckListDetailsAdapter extends TypeAdapter<CheckListDetails> {
  @override
  final int typeId = 3;

  @override
  CheckListDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CheckListDetails(
      question: fields[0] as String,
      check: fields[1] as String,
      close: fields[2] as String,
      remove: fields[3] as String,
      camera: fields[4] as String,
      message: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CheckListDetails obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.question)
      ..writeByte(1)
      ..write(obj.check)
      ..writeByte(2)
      ..write(obj.close)
      ..writeByte(3)
      ..write(obj.remove)
      ..writeByte(4)
      ..write(obj.camera)
      ..writeByte(5)
      ..write(obj.message);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CheckListDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
