import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'questions/english.dart';

class Mock extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MockState();
  }
}

class _MockState extends State<Mock> {
  int selectedOption;

  @override
  void initState() {
    super.initState();
    selectedOption = 0;
  }

  setSelectedOption(int val) {
    setState(() {
      selectedOption = val;
    });
    print("Current selection $selectedOption");
  }

  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Not selected any choice.Select one...!'),
      ),
    );
  }

  int _totalScore = 0;
  int ans;

  var _index = 0;
  var random = new Random();
  var _questionIndex = [];

  void _answerQuestion() {
    if (selectedOption - 1 == english[_questionIndex[_index]].ans)
      _totalScore++;
    print("Score:$_totalScore");
    if (selectedOption == 0)
      _showToast(context);
    else
      setState(() {
        selectedOption = 0;
        _index++;
      });
  }

  void _generateQuestion() {
    int q;
    for (int i = 0; i < 20; i++) {
      q = random.nextInt(english.length);
//      if(_questionIndex.contains(q))
//        while(_questionIndex.contains(q))
//          q = random.nextInt(english.length);
      _questionIndex.add(q);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _generateQuestion();
    return _index < 20
        ? Container(
            child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                    (_index + 1).toString() +
                        "." +
                        english[_questionIndex[_index]].qstn,
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              ),
              if (english[_questionIndex[_index]].img != null)
                Image.asset(
                    'assets/images/' + english[_questionIndex[_index]].img),
              RadioListTile(
                title: Text(english[_questionIndex[_index]].option[0]),
                value: 1,
                groupValue: selectedOption,
                onChanged: (val) {
                  setSelectedOption(val);
                },
              ),
              RadioListTile(
                title: Text(english[_questionIndex[_index]].option[1]),
                value: 2,
                groupValue: selectedOption,
                onChanged: (val) {
                  setSelectedOption(val);
                },
              ),
              RadioListTile(
                title: Text(english[_questionIndex[_index]].option[2]),
                value: 3,
                groupValue: selectedOption,
                onChanged: (val) {
                  setSelectedOption(val);
                },
              ),
              RaisedButton(
                child: Text("Next"),
                color: Colors.green,
                onPressed: _answerQuestion,
              )
            ],
          ))
        : Container(
            child: Center(
            child: Text(
              "Test Completed\nYour Score : $_totalScore",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ));
  }
}
