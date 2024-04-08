

import 'package:hive_flutter/hive_flutter.dart';
part 'todomodel.g.dart';

@HiveType(typeId: 1)
class tdmodel{
  @HiveField(0)
  String task;
  @HiveField(1)
  bool complete;
  @HiveField(2)
  String type;

tdmodel( {required this.complete,required this.task,required this.type});
}