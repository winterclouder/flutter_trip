import 'package:flutter_trip/model/commom_model.dart';

class SaleBoxModel {
  final String icon;
  final String moreUrl;
  final CommonModel bigCard1;
  final CommonModel bigCard2;
  final CommonModel smallCard1;
  final CommonModel smallCard2;
  final CommonModel smallCard3;
  final CommonModel smallCard4;

  SaleBoxModel(
      {this.icon,
      this.moreUrl,
      this.bigCard1,
      this.bigCard2,
      this.smallCard1,
      this.smallCard2,
      this.smallCard3,
      this.smallCard4});

  factory SaleBoxModel.formJson(Map<String, dynamic> json) {
    return SaleBoxModel(
      icon: json['icon'],
      moreUrl: json['moreUrl'],
      bigCard1: CommonModel.formJson(json['bigCard1']),
      bigCard2: CommonModel.formJson(json['bigCard2']),
      smallCard1: CommonModel.formJson(json['smallCard1']),
      smallCard2: CommonModel.formJson(json['smallCard2']),
      smallCard3: CommonModel.formJson(json['smallCard3']),
      smallCard4: CommonModel.formJson(json['smallCard4']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['moreUrl'] = this.moreUrl;
    data['bigCard1'] = this.bigCard1;
    data['bigCard2'] = this.bigCard2;
    data['smallCard1'] = this.smallCard1;
    data['smallCard2'] = this.smallCard2;
    data['smallCard3'] = this.smallCard3;
    data['smallCard4'] = this.smallCard4;
    return data;
  }
}
