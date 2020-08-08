import 'package:flutter/material.dart';
import 'package:learners_app/mock.dart';
import 'mock.dart';
import 'questionBank.dart';
import 'questionClass.dart';

import 'questions/english.dart';
import 'questions/malayalam.dart';

import 'signs.dart';

import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyappState();
  }
}

class _MyappState extends State<MyApp> {
  List<Lang> language = [
    Lang("English", english),
    Lang("Malayalam", malayalam)
  ];
  List<Question> questions = english;
  String lang;

  void _language(Lang language) {
    setState(() {
      questions = language.question;
      lang = language.choice;
      print("Selected lang:");
      print(language.choice);
    });
  }

  @override
  void initState() {
    // TODO: implement initState

    // final context = MyApp.navKey.currentState.context;
    // _showDialog1(context);

    // write();
    super.initState();
  }

  write() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("language", "English");
    print(prefs.getString("language") + "  this is it..........");
    lang = prefs.getString("language");
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            PopupMenuButton(
              onSelected: _language,
              itemBuilder: (BuildContext context) {
                return language.map((Lang language) {
                  return PopupMenuItem<Lang>(
                    value: language,
                    child: Text(language.choice),
                  );
                }).toList();
              },
              icon: Icon(Icons.language),
            )
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "Questions"),
              Tab(text: "Signs"),
              // Tab(
              //   text: "Mock",
              // )
            ],
          ),
          title: Text('Learners Guide'),
        ),
        body: TabBarView(
          children: <Widget>[
            QuestionBank(questions),
            Signs(lang),
            // Mock(),
          ],
        ),
      ),
    );
  }
}

class Lang {
  final String choice;
  final List<Question> question;

  Lang(this.choice, this.question);
}
