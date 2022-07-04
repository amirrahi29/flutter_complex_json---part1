import 'dart:convert';
import 'package:flutter_complex_json/model/UserModel.dart';
import 'package:http/http.dart' as http;

class UserRepository{

  static var client = http.Client();
  static Future<List<UserModel>?> fetchAllUsers() async{

    var response = await client.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    if(response.statusCode == 200)
      {
        var convertedJosnData = jsonDecode(response.body);
        return (convertedJosnData as List).map((e) => UserModel.fromJson(e)).toList();
      }
    else
      {
        return null;
      }

  }

}