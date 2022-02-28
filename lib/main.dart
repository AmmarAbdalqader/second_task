import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_task/UI/MyApp.dart';
import 'package:second_task/UI/Profile.dart';
import 'package:second_task/UI/Extra.dart';
import 'package:second_task/UI/Help.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/first',
      routes: {
        '/first' : (context) => MyHomePage(),
        '/second' : (context) => Extra(),
        '/third' : (context) => MyProfile(),
        '/forth' : (context) => Help(),
      },
    );
  }
}
