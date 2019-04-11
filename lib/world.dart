import 'package:flutter/material.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext content) {
    return new MaterialApp(
      title: 'image demo',
      theme: new ThemeData.fallback(),
      home: Image.network(
        'http://www.devio.org/img/avatar.png'
      ),
    );
  }
}