import 'package:flutter/material.dart';
import 'package:learners_app/mock.dart';
import 'mock.dart';
import 'questionBank.dart';
import 'signs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyappState();
  }
}

class _MyappState extends State<MyApp> {
  static final _myappStatekey = GlobalKey<_MyappState>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        key: _myappStatekey,
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(text: "Questions"),
                  Tab(text: "Signs"),
                  Tab(
                    text: "Mock",
                  )
                ],
              ),
              title: Text('Learners Guide'),
            ),
            body: TabBarView(
              children: <Widget>[
                QuestionBank(),
                Signs(),
                Mock(),
              ],
            ),
          ),
        ));
  }
}
