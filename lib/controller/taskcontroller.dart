// import 'dart:js_interop';


import 'package:hive_flutter/hive_flutter.dart';
import 'package:todotrial2/model/todomodel.dart';

class taskcontroller{
  static List<dynamic> tasklist = [];
  static var box = Hive.box<tdmodel>('todo');

  static void initData(){
    tasklist = box.keys.toList();
  }
static Future<void> addtask(tdmodel item)async{
  await box.add(item);
}
static tdmodel? gettask(var key){
  return box.get(key);
}
static Future<void> deletetask(var key)async{
  await box.delete(key);
  initData();
}
static Future<void> updatetask(var key, tdmodel item)async{
  await box.put(key, item);
  initData();
}



}