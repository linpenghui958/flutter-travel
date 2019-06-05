import 'package:flutter/material.dart';
import 'package:my_app/model/grid_nav_model.dart';

class GridNav extends StatelessWidget{
  final GridNavModel gridNavModel;
  final String name;

  const GridNav({Key key, this.gridNavModel, this.name = 'linph'}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(name);
  }
}