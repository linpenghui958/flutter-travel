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

// void main() => runApp(
//   new MaterialApp(
//     title: 'container',
//     home: new LayoutDemo(),
//   )
// );

// class LayoutDemo extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     Widget container = new Container(
//       decoration: new BoxDecoration(
//         color: Colors.grey,
//       ),
//       child: new Column(
//         children: <Widget>[
//           new Row(
//             children: <Widget>[
//               new Expanded(
//                 child: new Container(
//                   width: 150.0,
//                   height: 150.0,
//                   decoration: new BoxDecoration(
//                     border: new Border.all(width: 10.0, color: Colors.blueGrey),
//                     borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
//                   ),
//                   margin: const EdgeInsets.all(4.0),
//                   child: new Image.asset('images/banner1.jpg')
//                 ),
//               ),
//               new Expanded(
//                 child: new Container(
//                   width: 150.0,
//                   height: 150.0,
//                   decoration: new BoxDecoration(
//                     border: new Border.all(width: 10.0, color: Colors.blueGrey),
//                     borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
//                   ),
//                   margin: const EdgeInsets.all(4.0),
//                   child: new Image.asset('images/banner2.jpg')
//                 ),
//               ),
//               new Expanded(
//                 child: new Container(
//                   width: 200.0,
//                   height: 250.0,
//                   decoration: new BoxDecoration(
//                     border: new Border.all(width: 10.0, color: Colors.blueGrey),
//                     borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
//                   ),
//                   margin: const EdgeInsets.all(4.0),
//                   child: new Image.asset('images/banner3.jpg')
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );

//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Container Demo'),
//       ),
//       body: container,
//     );
//   }

  
// }