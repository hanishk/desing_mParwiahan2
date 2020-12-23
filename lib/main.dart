import 'package:flutter/material.dart';
import 'package:mparvahan_app/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'mPariwahan',
      theme: ThemeData(canvasColor: Colors.white),
      home: HomePage(),
    );
  }
}
