import 'package:flutter/material.dart';
import 'questions/english.dart';
import 'dart:math';

class Practise extends StatefulWidget {
  @override
  _Practise createState() => _Practise();
}

class _Practise extends State<Practise> {
  void initState() {
    super.initState();
    _generateQuestions();
  }

  static var random = new Random();
  bool _isEnabled = true;
  int _questionIndex = random.nextInt(english.length);
  int selectedOption = 0;
  int _index = 0;
  List _questions = [];

  setSelectedOption(int val) {
    setState(() {
      _isEnabled = false;
      selectedOption = val;
    });
    print("Current selection $selectedOption");
  }

  _generateQuestions() {
    int q;
    for (int i = 0; i < english.length; i++) {
      q = random.nextInt(english.length);
      // if (_questionIndex.contains(q))
      while (_questions.contains(q)) q = random.nextInt(english.length);
      _questions.add(q);
    }
    print(_questions);
  }

  nextQuestion() {
    setState(() {
      _isEnabled = true;
      selectedOption = 0;
      _index++;
      _color = [Colors.white, Colors.white, Colors.white];
    });
  }

  prevQuestion() {
    setState(() {
      selectedOption = 0;
      _color = [Colors.white, Colors.white, Colors.white];
      _isEnabled = true;
      _index--;
    });
  }

  List<Color> _color = [Colors.white, Colors.white, Colors.white];

  check() {
    if ((selectedOption - 1) == english[_questions[_index]].ans) {
      setState(() {
        _color[selectedOption - 1] = Colors.green[200];
      });
    } else {
      _color[selectedOption - 1] = Colors.red[200];
      _color[english[_questions[_index]].ans] = Colors.green[200];
    }
  }

  @override
  Widget build(BuildContext context) {
    print(english.length);
    print(_questionIndex);
    return Scaffold(
        appBar: AppBar(
          title: Text("Practise"),
        ),
        body: Container(
            child: Column(
          children: [
            Expanded(
                child: Column(children: <Widget>[
              ListTile(
                title: Text(
                    (_index + 1).toString() +
                        "." +
                        english[_questions[_index]].qstn,
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              ),
              if (english[_questions[_index]].img != null)
                Image.asset('assets/images/' + english[_questions[_index]].img),
              Card(
                color: _color[0],
                elevation: 2.0,
                margin: EdgeInsets.all(5),
                child: RadioListTile(
                    title: Text(
                      english[_questions[_index]].option[0],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    activeColor: Colors.red,
                    value: 1,
                    groupValue: selectedOption,
                    onChanged: _isEnabled
                        ? (val) {
                            setSelectedOption(val);
                            check();
                          }
                        : null),
              ),
              Card(
                color: _color[1],
                elevation: 2.0,
                margin: EdgeInsets.all(5),
                child: RadioListTile(
                  title: Text(english[_questions[_index]].option[1],
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  activeColor: Colors.red,
                  value: 2,
                  groupValue: selectedOption,
                  onChanged: _isEnabled
                      ? (val) {
                          setSelectedOption(val);
                          check();
                        }
                      : null,
                ),
              ),
              Card(
                color: _color[2],
                elevation: 2.0,
                margin: EdgeInsets.all(5),
                child: RadioListTile(
                    title: Text(english[_questions[_index]].option[2],
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    activeColor: Colors.red,
                    value: 3,
                    groupValue: selectedOption,
                    onChanged: _isEnabled
                        ? (val) {
                            setSelectedOption(val);
                            check();
                          }
                        : null),
              ),
            ])),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  if (_index != 0)
                    RaisedButton(
                      color: Colors.red,
                      child: Text("Previous"),
                      onPressed: prevQuestion,
                    ),
                  if (_index < english.length - 1)
                    RaisedButton(
                      color: Colors.green,
                      child: Text("Next"),
                      onPressed: nextQuestion,
                    )
                ],
              ),
              padding: EdgeInsets.all(10),
            )
          ],
        )));
  }
}
