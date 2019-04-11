import 'package:flutter/material.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext content) {
    return new MaterialApp(
      title: 'image demo',
      theme: new ThemeData.fallback(),
      home: Image(
        width: 50,
        height: 50,
        image: AssetImage(pdf.png)
      ),
    );
  }
}