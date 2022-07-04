import 'package:flutter_complex_json/model/AddressModel.dart';
import 'package:flutter_complex_json/model/CompanyModel.dart';

class UserModel{

  String? name;
  String? email;
  AddressModel? addressModel;
  CompanyModel? companyModel;

  UserModel({this.name,this.email,this.addressModel,this.companyModel});

  factory UserModel.fromJson(Map<String, dynamic> json){
    return UserModel(
      name: json['name'],
      email: json['email'],
      addressModel: AddressModel.fromJson(json['address']),
      companyModel: CompanyModel.fromJson(json['company']),
    );
  }

}