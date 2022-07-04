import 'package:flutter/material.dart';
import 'package:flutter_complex_json/view_model/UserViewModel.dart';
import 'package:get/get.dart';

class UserView extends StatefulWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  _UserViewState createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {

  final userViewModel = Get.put(UserViewModel());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Obx(()=>
              userViewModel.isLoading.value == true?
                  Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  ):
                  ListView.builder(
                    itemCount: userViewModel.productList.length,
                      itemBuilder: (context,index){
                        return Card(
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text("Name: ${userViewModel.productList[index].name}"),
                                Text("Email: ${userViewModel.productList[index].email}"),
                                Text("City: ${userViewModel.productList[index].addressModel!.city}"),
                                Text("Zipcode: ${userViewModel.productList[index].addressModel!.zipcode}"),
                                Text("Latitude: ${userViewModel.productList[index].addressModel!.geoModel!.lng}"),
                                Text("Longitude: ${userViewModel.productList[index].addressModel!.geoModel!.lng}"),
                                Text("Catche: ${userViewModel.productList[index].companyModel!.catchPhrase}"),

                              ],
                            ),
                          ),
                        );
                      }
                  )
          ),
        )
    );
  }
}
