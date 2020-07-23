import 'package:flutter/material.dart';

class Initial extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitialState();
}

class InitialState extends State<Initial> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text(
          "hello",
        ),
      ),
    ));
  }
}
