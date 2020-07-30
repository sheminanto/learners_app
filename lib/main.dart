import 'package:flutter/material.dart';
import 'tabs.dart';
import 'homepage.dart';
import 'mock.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'initialRoute.dart';

String _initialroute = "/initial";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  String language;

  try {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    language = prefs.getString("language");

    if (language == null) {
      _initialroute = '/initial';
    } else {
      _initialroute = '/homepage';
    }
  } catch (e) {
    print("error in shared preferences");
    print(e.toString());
  }

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: _initialroute,
      routes: <String, WidgetBuilder>{
        '/homepage': (context) => Home(),
        '/tabs': (context) => MyApp(),
        '/mocktest': (context) => Mock(),
        '/initial': (context) => Initial(),
      },
    );
  }
}
