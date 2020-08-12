import 'package:flutter/material.dart';
import 'package:flutter_basic_example/Home_page.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: "Flutter_Exampler",
        theme: ThemeData(
//          primaryColor: Colors.amber,
        ),
        home: HomePage(),
      ),
    );
  }
}
