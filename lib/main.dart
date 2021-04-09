import 'package:easy_web_view/src/impl.dart';
import 'package:flutter/material.dart';

// https://medium.com/@rody.davis.jr/displaying-html-in-flutter-8da44773764
// https://github.com/rodydavis/easy_web_view
// 
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String url = 'https://google.com';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Arial",
          textTheme: TextTheme(
              button: TextStyle(color: Colors.white, fontSize: 18.0),
              )),
      home: EasyWebViewImpl(src: 'https://google.com', onLoaded: () {  }), 
    );
  }
}

  