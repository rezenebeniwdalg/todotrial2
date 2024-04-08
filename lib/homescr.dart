

import 'package:flutter/material.dart';
import 'package:todotrial2/controller/taskcontroller.dart';
import 'package:todotrial2/model/todomodel.dart';


import 'addtask.dart';

class Homescr extends StatefulWidget {
  const Homescr({super.key});

  @override
  State<Homescr> createState() => _HomescrState();
}

class _HomescrState extends State<Homescr> {
  
  
  
  @override
  void initState(){
  taskcontroller.initData();
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()async {
      //  box.put("sample", tdmodel(task: "do it",type: "work"));
      //  setState(() {
         
      //  });
        showModalBottomSheet(
            context: context,
            builder: (context) => AddTodoDialog(),
          );
       
      },
      child: Icon(Icons.add),
      ),
      // body: Center(
      //   child: Column(mainAxisSize: MainAxisSize.min,children: [
      //     Text(box.get("sample")?.task.toString()?? "nodata"),
      //     Text(box.get("sample")?.type.toString()?? "nodata")
      //   ],),
      // ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("TASKS"),
        actions: [Icon(Icons.search,size: 30,),SizedBox(width: 10,)],


      ),
      body: Column(children: [
      Expanded(child: ListView.builder(itemBuilder: (context, index){
        var item = taskcontroller.gettask(taskcontroller.tasklist[index])!;
        return ListTile(
          leading: Checkbox(value: item.complete,onChanged: (value) {
            item.complete = value!;
            taskcontroller.updatetask(taskcontroller.tasklist[index], item);
            setState(() {
              
            });
          },),
        );
      }))
      ],),
    );
  }
}