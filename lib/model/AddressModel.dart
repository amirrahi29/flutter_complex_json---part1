import 'package:flutter_complex_json/model/GeoModel.dart';

class AddressModel{

  String? city;
  String? zipcode;
  GeoModel? geoModel;

  AddressModel({this.city,this.zipcode,this.geoModel});

  factory AddressModel.fromJson(Map<String,dynamic> json){
    return AddressModel(
      city: json['city'],
      zipcode: json['zipcode'],
      geoModel: GeoModel.fromJson(json['geo']),
    );
  }

}