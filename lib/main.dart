import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todotrial2/homescr.dart';
import 'package:todotrial2/model/todomodel.dart';

Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(tdmodelAdapter());
  await Hive.openBox<tdmodel>('todo');
  runApp(Todoapp());
}
class Todoapp extends StatelessWidget {
  const Todoapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescr(),
    );
  }
}