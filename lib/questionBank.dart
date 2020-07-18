import 'package:flutter/material.dart';
import 'questions/english.dart';
import 'questionClass.dart';

class QuestionBank extends StatelessWidget {
  final List<Question> questions = english;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: questions.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            if (questions[index].img == null)
              ListTile(
                leading: Text((index + 1).toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.red
                ),),
                title: Text(
                  questions[index].qstn,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                ),
              ),
            if (questions[index].img == null)
              ListTile(
                leading: Text("Ans :",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.green
                  ),),
                title: Text(questions[index].option[questions[index].ans],
                    style: TextStyle(fontStyle: FontStyle.italic,fontSize: 18)
                ),
              ),
          ],
        );
      },
    );
  }
}
