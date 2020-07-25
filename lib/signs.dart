import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learners_app/questionClass.dart';
import 'package:learners_app/questions/english.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Signs extends StatelessWidget {
  List<Question> signs;
  List<Question> _getSigns() {
    List<Question> list = List<Question>();
    final int len = english.length;

    for (int i = 0; i < len; i++) {
      if (english[i].img != null) {
        list.add(english[i]);
      }
    }
    return list;
  }

  read() async {
    final prefs = await SharedPreferences.getInstance();
    print(prefs.getString("language"));
  }

  @override
  Widget build(BuildContext context) {
    read();
    // TODO: implement build
    signs = _getSigns();
    print(signs.length);
    return Container(
        child: ListView.builder(
            itemCount: signs.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 3,
                child: ListTile(
                  contentPadding: EdgeInsets.all(20),
                  leading: Image.asset('assets/images/' + signs[index].img),
                  title: Text(
                    signs[index].option[signs[index].ans],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              );
            }));
  }
}
