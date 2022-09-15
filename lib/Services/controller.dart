import 'dart:convert';

import 'package:biker_app/model/usercreatedata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

import '../model/userlogin.dart';

class DataController extends GetxController {
  Signup? signup;
  var isDataloading = false.obs;
  var namecontroller = TextEditingController();
  var mobilecontroller = TextEditingController();

  createUserInformationfromApi() async {
    try {
      isDataloading(true);
      http.Response response = await http.post(
          Uri.tryParse(
              'https://birma-backend.herokuapp.com/api/biker/createReq')!,
          body: {
            "name": namecontroller.text,
            "phone": mobilecontroller.text,
          });
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var result = jsonDecode(response.body)["data"];
        print(result);
        print('Response status: ${response.statusCode}');
        print('Response body: ${response.body}');
      } else {}
    } catch (e) {
      print("error is post data $e");
    } finally {
      isDataloading(false);
    }
  }
}

class loginController extends GetxController {
  static loginController get to => Get.find();
  String name = "";
  var phone;
  Userdata? logindata;
  var isDataloading = false.obs;
  var loginidcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  //var baseurl = "https://birma-backend.herokuapp.com";

  getuserdetails() async {
    try {
      isDataloading(true);
      http.Response response = await http.post(
          Uri.tryParse('https://birma-backend.herokuapp.com/api/biker/login')!,
          body: {
            "loginId": loginidcontroller.text,
            "password": passwordcontroller.text,
          });
      print(jsonDecode(response.body));
      if (response.statusCode == 200) {
        // var jsonstring = response.body;
        // var decodedata = json.decode(jsonstring);
        // var parsedata = decodedata["data"];
        // return welcomeFromJson(parsedata);
        jsonDecode(response.body)["data"];
        logindata = Userdata.fromJson(jsonDecode(response.body)["data"]);
        return logindata;
      } else {}
    } catch (e) {
      print("error is post data $e");
    } finally {
      isDataloading(false);
    }
  }
}

class NewOrder extends GetxController {}
