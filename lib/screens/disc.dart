import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'delivery.dart';

class Disc extends StatefulWidget {
  String name;
  String abt;
  String app;
  String dos;
  String rist;
  String st;
  Disc(
      {@required this.name,
      @required this.abt,
      @required this.app,
      @required this.dos,
      @required this.rist,
      @required this.st});
  @override
  _DiscState createState() => _DiscState();
}

class _DiscState extends State<Disc> {
  FlutterTts flutterTts = FlutterTts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Info'), actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            onPrimary: Color(0xFFDCEDC8),
            primary: Colors.green,
            padding: EdgeInsets.symmetric(horizontal: 16),
          ),
          onPressed: () async {
            String speakString =
                "${widget.name.toUpperCase()},About:${widget.abt},Applicability:${widget.app},Dosage and Usage:${widget.dos},Restriction:${widget.rist},Storage:${widget.st}";
            await flutterTts.setSpeechRate(1);
            await flutterTts.awaitSpeakCompletion(false);
            await flutterTts.setLanguage("en-US");
            await flutterTts.speak(speakString);
          },
          child: Text(
            'EN',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.green,
            primary: Colors.green,
            padding: EdgeInsets.symmetric(horizontal: 16),
          ),
          onPressed: () async {
            String speakString =
                "${widget.name.toUpperCase()},About:${widget.abt},Applicability:${widget.app},Dosage and Usage:${widget.dos},Restriction:${widget.rist},Storage:${widget.st}";
            await flutterTts.setSpeechRate(1);
            await flutterTts.awaitSpeakCompletion(false);
            await flutterTts.setLanguage("de-LI");
            await flutterTts.speak(speakString);
          },
          child: Text(
            'GE',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.green,
            primary: Colors.green,
            padding: EdgeInsets.symmetric(horizontal: 16),
          ),
          onPressed: () async {
            String speakString =
                "${widget.name.toUpperCase()},About:${widget.abt},Applicability:${widget.app},Dosage and Usage:${widget.dos},Restriction:${widget.rist},Storage:${widget.st}";
            await flutterTts.setSpeechRate(1);
            await flutterTts.awaitSpeakCompletion(false);
            await flutterTts.setLanguage("hi-IN");
            await flutterTts.speak(speakString);
          },
          child: Text(
            'HI',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        IconButton(
            icon: Icon(Icons.close),
            onPressed: () async {
              var result = await flutterTts.stop();
              /* if (result == 1) setState(() => flutterTts = flutterTts.stopped); */
            }),
      ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.green,
                        boxShadow: [
                          BoxShadow(color: Colors.grey, spreadRadius: 5),
                        ],
                      ),
//                  color: Color(0xffE2E2E2),

                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              '${widget.name.toUpperCase()}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                              softWrap: true,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, top: 12),
                              child: Text(
                                'About:',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                softWrap: true,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, bottom: 12),
                              child: Text(
                                '${widget.abt}',
                                softWrap: true,
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, top: 12),
                              child: Text(
                                'Applicability:',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                softWrap: true,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, bottom: 12),
                              child: Text(
                                '${widget.app}',
                                softWrap: true,
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, top: 12),
                              child: Text(
                                'Dosage and Usage:',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                softWrap: true,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, bottom: 12),
                              child: Text(
                                '${widget.dos}',
                                softWrap: true,
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, top: 12),
                              child: Text(
                                'Restriction:',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                softWrap: true,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, bottom: 12),
                              child: Text(
                                '${widget.rist}',
                                softWrap: true,
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, top: 12),
                              child: Text(
                                'Storage',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                softWrap: true,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, bottom: 12),
                              child: Text(
                                '${widget.st}',
                                softWrap: true,
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(height: 4.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(50)),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    elevation: 15.0,
                    primary: Colors.green,
                    textStyle:
                        TextStyle(fontSize: 38, fontWeight: FontWeight.bold)),
                onPressed: () {},
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => FoodOrderPage()));
                  },
                  child: Center(
                    child: Text(
                      'Buy',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                      //                        textAlign: ,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
