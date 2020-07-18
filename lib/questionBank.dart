import 'package:flutter/material.dart';
import 'questions/english.dart';

class QuestionBank extends StatelessWidget {
  // final List<Question> questions = english;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: english.length,
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
                    "${index + 1}. " + english[index].qstn,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                if (english[index].img != null)
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 50),
                    leading: Image.asset('assets/images/' + english[index].img),
                  ),
                ListTile(
                  title: Text(
                      "Ans. " + english[index].option[english[index].ans],
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
