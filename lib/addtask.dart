import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todotrial2/model/todomodel.dart';


class AddTodoDialog extends StatefulWidget {
  @override
  _AddTodoDialogState createState() => _AddTodoDialogState();
}

class _AddTodoDialogState extends State<AddTodoDialog> {
  
TextEditingController _task = TextEditingController();
TextEditingController _type = TextEditingController();
var box = Hive.box<tdmodel>('todo');
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("add task"),
      TextFormField(
                    controller: _task,
                  decoration: InputDecoration(
                    hintText: "Title",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                ), 
                TextFormField(
                    controller: _type,
                  decoration: InputDecoration(
                    hintText: "Title",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                ), 
      InkWell(
        onTap: () async {
         await box.put("sample", tdmodel(task: _task.text,type: _type.text, complete: true));
          Navigator.pop(context);
        },
        child: Container(
          child: Text("add"),
        ),
      )
    ] ) );
  }

  // @override
  // void dispose() {
  //   _textController.dispose();
  //   super.dispose();
  // }
}