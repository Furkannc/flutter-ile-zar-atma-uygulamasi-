import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

int zarsol = 1;
int zarsag = 1;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: dicepage(),
      ),
    );
  }
}

class dicepage extends StatefulWidget {
  @override
  State<dicepage> createState() => _dicepageState();
}

class _dicepageState extends State<dicepage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => setState(() {
          zarat();
        }),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$zarsol",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 90,
                          fontFamily: "RubikWetPaint-Regular"),
                    ),
                    Image.asset("images/dice$zarsol.png")
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$zarsag",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 90,
                            fontFamily: "RubikWetPaint-Regular"),
                      ),
                      Image.asset("images/dice$zarsag.png"),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

void zarat() {
  zarsag = Random().nextInt(6) + 1;
  zarsol = Random().nextInt(6) + 1;
}
