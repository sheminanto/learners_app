import 'package:flutter/material.dart';
import 'questions/english.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(
                  tabs: <Widget>[
                    Tab(text: "Questions"),
                    Tab(text: "Signs")
                  ],
                ),
                title: Text('Learners Guide'),
              ),
              body: TabBarView(children: <Widget>[
                    QuestionBank(),
                    Signs(),
                  ],
                ),
              ),
            ));
  }
}
