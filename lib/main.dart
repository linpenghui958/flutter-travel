import 'package:flutter/material.dart';
import 'package:my_app/navigator/tab_navigator.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext content) {
    return new MaterialApp(
      title: 'image demo',
      theme: new ThemeData.fallback(),
      home: TabNavigator(),
    );
  }
}