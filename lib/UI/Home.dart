import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('All'),
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.green,
                          primary: Colors.white54,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Indian'),
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.green,
                          primary: Colors.white54,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Italian'),
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.green,
                          primary: Colors.white54,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Mexican'),
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.green,
                          primary: Colors.white54,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Chinese'),
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.green,
                          primary: Colors.white54,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.only(left: 10, right: 10),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 300,
                height: 190,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cook Something New Everyday',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 15),
                            child: Text(
                              'New and tasty recipes every minute',
                              style: TextStyle(
                                color: Colors.grey[300],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.ac_unit, color: Colors.white),
                              Text(
                                '  95  Recipes',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.access_time_filled,
                                  color: Colors.white),
                              Text(
                                '  16  Chefs',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Image.asset(
                            'images/food3.png',
                            width: 83,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
              thickness: 0,
            ),
          ),
        ),
      ],
    );
  }
}
