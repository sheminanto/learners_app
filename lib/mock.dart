import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learners_app/main.dart';
import 'dart:async';
import 'dart:math';
import 'questions/english.dart';
import 'signs.dart';
import 'main.dart';

class Mock extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MockState();
  }
}

class _MockState extends State<Mock> with SingleTickerProviderStateMixin {
  int counter;
  int min, sec;
  int selectedOption = 0;
  int count;
  Timer _timer;
  bool timeout = false;

  int _totalScore = 0;
  int ans;

  var _index = 0;
  var random = new Random();
  var _questionIndex = [];

  // int _tabIndex = 0;
  // TabController tabController;

  @override
  void initState() {
    super.initState();
    _showDialog();
    // tabController = TabController(vsync: this, length: 3);

    _generateQuestion();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  // void _toggleTab() {
  //   _tabIndex = tabController.index + 1;
  //   tabController.animateTo(1);
  // }

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
        content: const Text('Please select an option.'),
      ),
    );
  }

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
        if (_index == 20) {
          _timer.cancel();
        }
      });
  }

  void _generateQuestion() {
    int q;
    for (int i = 0; i < 20; i++) {
      q = random.nextInt(english.length);
      // if (_questionIndex.contains(q))
      while (_questionIndex.contains(q)) q = random.nextInt(english.length);
      _questionIndex.add(q);
    }
    print(_questionIndex);
  }

  void _startTimer() {
    print("------------Starting Timer----------------");
    counter = 1200;

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (counter > 0) {
          counter--;
          min = counter ~/ 60;
          sec = counter % 60;
        } else {
          _timer.cancel();
          timeout = true;
        }
      });
    });
  }

  void _showDialog() {
    // flutter defined function
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            // title: Text(
            //   "Aert",
            //   textAlign: TextAlign.center,
            // ),
            content: new Text("Press the button to start or cancel the test."),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog

              FlatButton(
                color: Colors.blue,
                child: Text("Start"),
                onPressed: () {
                  _startTimer();
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                color: Colors.blue,
                child: Text("Cancel"),
                onPressed: () {
                  // _myappStatekey.currentState.tabController.animateTo(1);
                  // _toggleTab();
                },
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.30),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // _showDialog(context);
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
                  // color: Colors.green,
//                  padding: EdgeInsets.all(20),
                  alignment: Alignment.bottomCenter,
                  child: RaisedButton(
                    child: Text("Next"),
                    color: Colors.green,
                    onPressed: _answerQuestion,
                  ),
                ),
                Text("Time left : $min : $sec "),
                Text("Score : $_totalScore"),
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
