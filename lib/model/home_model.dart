
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

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    var localNavListJson = json['localNavList'] as List;
    List<CommonModel> localNavList = 
      localNavListJson.map((i) => CommonModel.fromJson(i)).toList();
    var bannerListJson = json['bannerList'] as List;
    List<CommonModel> bannerList = 
      bannerListJson.map((i) => CommonModel.fromJson(i)).toList();
    var subNavListJson = json['localNavList'] as List;
    List<CommonModel> subNavList = 
      subNavListJson.map((i) => CommonModel.fromJson(i)).toList();
    
    return HomeModel(
      localNavList: localNavList,
      bannerList: bannerList,
      subNavList: subNavList,
      config: ConfigModel.fromJson(json['config']),
      gridNav: GridNavModel.fromJson(json['gridNav']),
      salesBox: SalexBoxModal.fromJson(json['salesBox'])
    );
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['config'] = this.config;
    data['bannerList'] = this.bannerList;
    data['localNavList'] = this.localNavList;
    data['subNavList'] = this.subNavList;
    data['gridNav'] = this.gridNav;
    data['salesBox'] = this.salesBox;
    return data;
  }
}