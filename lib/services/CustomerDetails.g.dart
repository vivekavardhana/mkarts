// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../models/CustomerDetails.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CustomerDetailsAdapter extends TypeAdapter<CustomerDetails> {
  @override
  final int typeId = 2;

  @override
  CustomerDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CustomerDetails(
      customerName: fields[0] as String,
      address1: fields[1] as String,
      address2: fields[2] as String,
      address3: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CustomerDetails obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.customerName)
      ..writeByte(1)
      ..write(obj.address1)
      ..writeByte(2)
      ..write(obj.address2)
      ..writeByte(3)
      ..write(obj.address3);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomerDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
