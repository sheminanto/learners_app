import 'package:flutter/material.dart';
import 'package:learners_app/tabs.dart';
import 'mock.dart';
import 'practise.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      // appBar: AppBar(
      //   title: Text("Learner's Guide"),
      // ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: 500,
          padding: EdgeInsets.all(50),
          alignment: Alignment.center,
          child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children: <Widget>[
              InkResponse(
                enableFeedback: true,
                child: Card(
                  elevation: 5.0,
                  color: Colors.lightBlueAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.school,
                        size: 50,
                      ),
                      Text(
                        "Learn",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
              ),
              InkResponse(
                child: Card(
                  elevation: 5.0,
                  color: Colors.lightBlueAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.description,
                        size: 50,
                      ),
                      Text(
                        "Practise",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Practise()),
                  );
                },
              ),
              InkResponse(
                child: Card(
                  elevation: 5.0,
                  color: Colors.lightBlueAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.timer,
                        size: 50,
                      ),
                      Text(
                        "Test",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mock()),
                  );
                },
              ),
              InkResponse(
                enableFeedback: true,
                child: Card(
                  elevation: 5.0,
                  color: Colors.lightBlueAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.help,
                        size: 50,
                      ),
                      Text(
                        "Help",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Mock()),
                  // );
                },
              )
            ],
          ),
        ),
      ),
    ));
  }
}
