import 'package:flutter_trip/model/commom_model.dart';
import 'package:flutter_trip/model/config_model.dart';
import 'package:flutter_trip/model/grid_nav_model.dart';
import 'package:flutter_trip/model/sale_box_model.dart';

class HomeModel {
  final ConfigModel config;
  final List<CommonModel> bannerList;
  final List<CommonModel> localNavList;
  final GridNavModel gridNav;
  final SaleBoxModel salesBox;

  HomeModel(
      {this.config,
      this.bannerList,
      this.localNavList,
      this.gridNav,
      this.salesBox});

  factory HomeModel.formJson(Map<String, dynamic> json) {
    var bannerListJson = json['bannerList'] as List;
    List<CommonModel> bannerList =
        bannerListJson.map((e) => CommonModel.formJson(e)).toList();
    var localNavListJson = json['localNavList'] as List;
    List<CommonModel> localNavList =
        localNavListJson.map((e) => CommonModel.formJson(e)).toList();
    return HomeModel(
        config: ConfigModel.formJson(json['config']),
        bannerList: bannerList,
        localNavList: localNavList,
        gridNav: GridNavModel.formJson(json['gridNav']),
        salesBox: SaleBoxModel.formJson(json['salesBox']));
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['config'] = this.config;
    data['bannerList'] = this.bannerList;
    data['localNavList'] = this.localNavList;
    data['gridNav'] = this.gridNav;
    data['salesBox'] = this.salesBox;
    return data;
  }
}
