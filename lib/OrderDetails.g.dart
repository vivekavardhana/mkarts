// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OrderDetails.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrderDetailsAdapter extends TypeAdapter<OrderDetails> {
  @override
  final int typeId = 0;

  @override
  OrderDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OrderDetails(
      orderno: fields[0] as String,
      orderamount: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, OrderDetails obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.orderno)
      ..writeByte(1)
      ..write(obj.orderamount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
