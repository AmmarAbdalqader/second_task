import 'package:flutter/material.dart';

class Extra extends StatefulWidget {
  @override
  _Extra createState() => _Extra();
}

class _Extra extends State<Extra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Heyyy',
        style: TextStyle(fontSize: 35, color: Colors.blue),
      )),
    );
  }
}
