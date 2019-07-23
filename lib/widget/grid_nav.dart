import 'package:flutter/material.dart';
import 'package:my_app/model/grid_nav_model.dart';

class GridNav extends StatelessWidget{
  final GridNavModel gridNavModel;

  const GridNav({Key key, this.gridNavModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _gridNavItems(context),
    );
  }

  _gridNavItems(BuildContext context) {
    List<Widget> items = [];
    if(gridNavModel == null ) return items;
    if(gridNavModel.hotel != null) {

    }
    if(gridNavModel.flight != null) {

    }
    if(gridNavModel.travel != null) {

    }
  }

  _gridNavItem(BuildContext context, GridNavItem gridNavItem, bool first) {
    List<Widget> items = [];
    
  }
}