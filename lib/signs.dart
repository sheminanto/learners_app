import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learners_app/questionClass.dart';
import 'package:learners_app/questions/english.dart';

class Signs extends StatelessWidget {
  List<Question> signs;
  List<Question> _getSigns() {
    List<Question> list = List<Question>();
    for (int i = 133; i < 212; i++) {
      list.add(english[i]);
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    signs = _getSigns();
    print(signs.length);
    return Container(
        child: ListView.builder(
            itemCount: signs.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
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
