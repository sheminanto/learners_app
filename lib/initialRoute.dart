import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Initial extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitialState();
}

class InitialState extends State<Initial> {
  int selected = 0;
  String language;

  void setSelection(int value) async {
    setState(() {
      selected = value;
      done();
    });

    SharedPreferences prefs = await SharedPreferences.getInstance();
    switch (value) {
      case 1:
        language = "english";
        break;
      case 2:
        language = "malayalam";
        break;

      default:
        language = "english";
    }
    prefs.setString("language", language);
    print("language set to " + language);
  }

  void done() {
    if (selected != 0) {
      Navigator.pushReplacementNamed(context, '/homepage');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            alignment: Alignment.center,
            child: Column(children: <Widget>[
              SizedBox(height: 100),
              Text("Select language",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              RadioListTile(
                title: Text("English"),
                activeColor: Colors.red,
                value: 1,
                groupValue: selected,
                onChanged: (val) {
                  setSelection(val);
                },
              ),
              RadioListTile(
                title: Text("Malayalam"),
                activeColor: Colors.red,
                value: 2,
                groupValue: selected,
                onChanged: (val) {
                  setSelection(val);
                },
              ),
              RaisedButton(
                child: Text("Next"),
                color: Colors.green,
                onPressed: done,
              )
            ]),
          ),
        ));
  }
}
