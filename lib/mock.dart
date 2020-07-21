import 'package:flutter/cupertino.dart';
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
  int counter;
  int selectedOption = 0;
  int count;
  Timer _timer;
  bool timeout = false;

  @override
  void initState() {
    super.initState();
    // selectedOption = 0;
    _generateQuestion();
    _startTimer();
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
      if (_questionIndex.contains(q))
        while (_questionIndex.contains(q)) q = random.nextInt(english.length);
      _questionIndex.add(q);
    }
    print(_questionIndex);
  }

  void _startTimer() {
    print("------------Starting Timer----------------");
    counter = 2;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (counter > 0) {
        setState(() {
          counter--;
        });
      } else {
        setState(() {
          _timer.cancel();
          timeout = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _index < 20 && !timeout
        ? Container(
            // color: Colors.red,
            padding: EdgeInsets.only(top: 5),
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
                  activeColor: Colors.red,
                  value: 1,
                  groupValue: selectedOption,
                  onChanged: (val) {
                    setSelectedOption(val);
                  },
                ),
                RadioListTile(
                  title: Text(english[_questionIndex[_index]].option[1]),
                  activeColor: Colors.red,
                  value: 2,
                  groupValue: selectedOption,
                  onChanged: (val) {
                    setSelectedOption(val);
                  },
                ),
                RadioListTile(
                  title: Text(english[_questionIndex[_index]].option[2]),
                  activeColor: Colors.red,
                  value: 3,
                  groupValue: selectedOption,
                  onChanged: (val) {
                    setSelectedOption(val);
                  },
                ),
                Container(
                  width: double.infinity,
//                  margin: EdgeInsets.all(10),
                  color: Colors.green,
//                  padding: EdgeInsets.all(20),
                  alignment: Alignment.bottomCenter,
                  child: RaisedButton(
                    child: Text("Next"),
                    color: Colors.green,
                    onPressed: _answerQuestion,
                  ),
                ),
                Text("Time left:$counter"),
//                Expanded(
//
//                    child: Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                  children: [
//                    Container(
//                      width:double.infinity,
//                      margin: EdgeInsets.all(10),
//                      color: Colors.green,
//                      padding: EdgeInsets.all(20),
//                      alignment: Alignment.center,
//                      child: RaisedButton(
//
//                        child: Text("Next"),
//                        color: Colors.green,
//                        onPressed: _answerQuestion,
//                      ),
//                    ),
//                  ],
//                ))
              ],
            ))
        : Container(
            child: Center(
            child: Text(
              "Test Completed\nYour Score : $_totalScore\nStatus : " +
                  (_totalScore < 12 ? "Failed" : "Passed"),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ));
  }
}
