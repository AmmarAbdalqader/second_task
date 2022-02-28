import 'package:flutter/material.dart';
import 'package:second_task/UI/Extra.dart';
import 'package:second_task/UI/Home.dart';
import 'package:second_task/UI/Profile.dart';
import 'package:second_task/UI/Help.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List _items = [Home(), Extra(), Help()];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list, color: Colors.black),
        elevation: 0,
        title: Text(
          'Food Recipes',
          style: TextStyle(color: Colors.lightGreen),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  Navigator.pushNamed(context, '/third');
                },
                color: Colors.black),
          )
        ],
      ),
      body: _items[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted),
            label: 'List',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.child_care),
              label: 'Hey'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_3x3),
              label: 'Grid'
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        onTap: _onTap,
      ),
    );
  }

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
