// import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:learners_app/tabs.dart';
import 'questions/trafficsigns.dart';
// import 'package:learners_app/questionClass.dart';
// import 'package:learners_app/questions/english.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Signs extends StatefulWidget {
  String lang;
  Signs(String lang) {
    this.lang = lang;
  }
  _SignsState createState() => _SignsState(lang);
}

class _SignsState extends State<Signs> {
  String lang;
  _SignsState(this.lang);
  int _signIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: signs[_signIndex].length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 3,
                      child: ListTile(
                          contentPadding: EdgeInsets.all(20),
                          leading: Image.asset('assets/images/' +
                              signs[_signIndex][index]["img"]),
                          title: lang == "English"
                              ? Text(
                                  signs[_signIndex][index]["eng"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                )
                              : Text(
                                  signs[_signIndex][index]["mal"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                )),
                    );
                  }),
            ),
            Align(
              // alignment: Alignment.bottomCenter,
              child: BottomNavigationBar(
                iconSize: 10,
                elevation: 5.0,
                currentIndex: _signIndex,
                items: [
                  BottomNavigationBarItem(
                      // icon: Icon(Icons.school),
                      icon: Image.asset('assets/images/mandatory.png'),
                      title: Text(
                        "Mandatory\nSigns",
                        textAlign: TextAlign.center,
                      )),
                  BottomNavigationBarItem(
                      // icon: Icon(Icons.school),
                      icon: Image.asset('assets/images/cautionary.png'),
                      title: Text(
                        "Cautionary\nSigns",
                        textAlign: TextAlign.center,
                      )),
                  BottomNavigationBarItem(
                      // icon: Icon(Icons.school),
                      icon: Image.asset('assets/images/informatory.png'),
                      title: Text(
                        "Informatory\nSigns",
                        textAlign: TextAlign.center,
                      ))
                ],
                onTap: (index) {
                  setState(() {
                    _signIndex = index;
                  });
                },
              ),
            ),
          ],
        ));
  }
}
