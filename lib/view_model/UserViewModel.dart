import 'package:flutter_complex_json/model/UserModel.dart';
import 'package:flutter_complex_json/repository/UserRepository.dart';
import 'package:get/get.dart';

class UserViewModel extends GetxController{

  var productList = <UserModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAllProducts();
  }

  Future<void> getAllProducts() async{
    var user = await UserRepository.fetchAllUsers();
    if(user != null)
      {
        productList.value = user;
        isLoading.value = false;
      }
  }

}