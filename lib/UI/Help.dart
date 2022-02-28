import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  @override
  _Help createState() => _Help();
}

class _Help extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: <Widget>[
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 13,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cook Something New Everyday',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, bottom: 10),
                                  child: Text(
                                    'New and tasty recipes every minute',
                                    style: TextStyle(
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset(
                                  'images/food4.png',
                                  width: 42,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
