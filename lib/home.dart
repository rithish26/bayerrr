import 'package:bayer/screens/chat.dart';
import 'package:bayer/screens/herbi.dart';
import 'package:bayer/screens/scan.dart';
import 'package:bayer/screens/scanee.dart';
import 'package:camera/camera.dart';

import 'package:flutter/material.dart';

import 'ocr.dart';

class Home extends StatefulWidget {
  final CameraDescription camera;
  const Home({
    Key key,
    @required this.camera,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void handleClick(String value) {
    switch (value) {
      case 'Logout':
        break;
      case 'Settings':
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text(
              '                     Bayer',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                  icon: Icon(Icons.chat),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Chat()));
                  }),
            ]),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              Container(
                color: Colors.lightGreen,
                height: 70,
              ),
              ListTile(
                title: const Text('Hologram Code scan'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Pagee(camera: widget.camera)),
                  );
                },
              ),
              ListTile(
                title: const Text('Product Scan'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Crop Prediction'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Crop Cultivation Guidance'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        body: Container(
          decoration: new BoxDecoration(
            color: const Color(0xff7c94b6),
            image: new DecorationImage(
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.1), BlendMode.dstATop),
              image: new NetworkImage(
                'https://octavosystems.com/octavosystems.com/wp-content/uploads/2020/02/Bayer-logo.jpg',
              ),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Column(children: [
                    Container(
                      height: 200.0,
                      width: 200.0,
                      padding: EdgeInsets.only(
                        top: 50,
                        left: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/herbi.png'),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Herbi()),
                          );
                        },
                        child: Text(
                          'Herbicides',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ]),
                  Column(children: [
                    Container(
                      height: 200.0,
                      width: 200.0,
                      padding: EdgeInsets.only(
                        top: 50,
                        left: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/fungi.png'),
                    ),
                    TextButton(
                        onPressed: null,
                        child: Text(
                          'Fungicides',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ]),
                  /* Container(
                  height: 200.0,
                  width: 200.0,
                  padding: EdgeInsets.only(top: 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Center(
                    child: Image.asset('assets/images/herbi.png'),
                  ),
                ), */
                ],
              ),
              Row(
                children: [
                  Column(children: [
                    Container(
                      height: 200.0,
                      width: 200.0,
                      padding: EdgeInsets.only(
                        top: 50,
                        left: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/insect.jpeg'),
                    ),
                    TextButton(
                        onPressed: null,
                        child: Text(
                          'Insecticides',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ]),
                  Column(children: [
                    Container(
                      height: 200.0,
                      width: 200.0,
                      padding: EdgeInsets.only(
                        top: 50,
                        left: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/harvest.png'),
                    ),
                    TextButton(
                        onPressed: null,
                        child: Text(
                          'Harvest Aids',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ]),
                  /* Container(
                  height: 200.0,
                  width: 200.0,
                  padding: EdgeInsets.only(top: 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Center(
                    child: Image.asset('assets/images/herbi.png'),
                  ),
                ), */
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.green,
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  tooltip: 'Open navigation menu',
                  icon: const Icon(Icons.feedback),
                  onPressed: () {},
                ),
                IconButton(
                  tooltip: 'Search',
                  icon: const Icon(Icons.account_circle),
                  onPressed: () {},
                ),
                IconButton(
                  tooltip: 'Favorite',
                  icon: const Icon(Icons.history),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ));
  }
}
