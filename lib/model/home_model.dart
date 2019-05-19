
import 'package:my_app/model/comon_model.dart';
import 'package:my_app/model/config_model.dart';
import 'package:my_app/model/grid_nav_model.dart';
import 'package:my_app/model/sales_box_model.dart';

class HomeModel {
  final ConfigModel config;
  final List<CommonModel> bannerList;
  final List<CommonModel> localNavList;
  final List<CommonModel> subNavList;
  final GridNavModel gridNav;
  final SalexBoxModal salesBox;
  HomeModel({
    this.config,
    this.bannerList,
    this.localNavList,
    this.subNavList,
    this.gridNav,
    this.salesBox
    });

  
}