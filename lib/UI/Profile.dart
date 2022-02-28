import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            child: Stack(
              children: <Widget>[
                ClipPath(
                  clipper: OvalBottomBorderClipper(),
                  child: Container(
                    height: 150,
                    color: Colors.lightGreen,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_outlined,
                              color: Colors.white)),
                      Expanded(
                          child: Text('Profile',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19))),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'EDIT',
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 123,
                  child: CircleAvatar(
                    radius: 75,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 69,
                      backgroundImage: AssetImage('images/person.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Ammar Abdalqader',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Text(
            'ammar.khalid513@gmail.com',
            style: TextStyle(color: Colors.grey[500]),
          ),
          Padding(padding: EdgeInsets.all(20)),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text(
              'Saved Recipes',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
          ListTile(
            leading: Icon(
              Icons.local_play,
              color: Colors.amber,
            ),
            title: Text(
              'Super Plan',
              style: TextStyle(color: Colors.grey[600]),
            ),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
          ListTile(
            leading: Icon(Icons.g_translate),
            title: Text(
              'Change Language',
              style: TextStyle(color: Colors.grey[600]),
            ),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text(
              'Help',
              style: TextStyle(color: Colors.grey[600]),
            ),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
        ],
      ),
    );
  }
}
