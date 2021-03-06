import 'package:flutter/material.dart';
import 'package:flutter_101_todo/controllers/appdata.dart';

import 'views/homepage/event_list_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppData.initEvent();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const EventListPage(),
    );
  }
}
