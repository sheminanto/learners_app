import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'questionClass.dart';
import 'questions/english.dart';
import 'questions/malayalam.dart';

class QuestionBank extends StatelessWidget {
  List<Question> question;
  QuestionBank(this.question) {
    print(question[0].qstn);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: question.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  title: Text(
                    "${index + 1}. " + question[index].qstn,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                if (question[index].img != null)
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 50),
                    leading:
                        Image.asset('assets/images/' + question[index].img),
                  ),
                ListTile(
                  title: Text(
                      "Ans. " + question[index].option[question[index].ans],
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 16)),
                ),
              ],
            ),
          ),
        );

        // Column(
        //   children: <Widget>[
        //     if (questions[index].img == null)
        //       ListTile(
        //         title: Text(
        //           "${index + 1}. " + questions[index].qstn,
        //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        //         ),
        //       ),
        //     if (questions[index].img == null)
        //       ListTile(
        //         title: Text(
        //             "Ans. " + questions[index].option[questions[index].ans],
        //             style:
        //                 TextStyle(fontStyle: FontStyle.italic, fontSize: 18)),
        //       ),
        //   ],
        // );
      },
    );
  }
}
