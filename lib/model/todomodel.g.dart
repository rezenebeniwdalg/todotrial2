// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todomodel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class tdmodelAdapter extends TypeAdapter<tdmodel> {
  @override
  final int typeId = 1;

  @override
  tdmodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return tdmodel(
      complete: fields[1] as bool,
      task: fields[0] as String,
      type: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, tdmodel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.task)
      ..writeByte(1)
      ..write(obj.complete)
      ..writeByte(2)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is tdmodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
