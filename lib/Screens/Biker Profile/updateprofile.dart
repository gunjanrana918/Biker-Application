import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Services/controller.dart';
import '../Product Screen/dashboard.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  static loginController get to => Get.find();
  final unamecontroller = TextEditingController();
  final uemailcontroller = TextEditingController();
  final uphonecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Update Profile"),
          backgroundColor: Colors.blue,
        ),
        body: GetBuilder<loginController>(
          init: loginController(),
          builder: (_) => SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(30.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 400,
                      height: 60.0,
                      child: TextFormField(
                        controller: unamecontroller,
                        decoration: InputDecoration(
                            labelText: "${loginController.to.logindata!.name}",
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                            //hintText: "${loginController.to.name}",
                            contentPadding: EdgeInsets.all(15.0),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            )),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 400,
                      height: 60.0,
                      child: TextFormField(
                        controller: uemailcontroller,
                        decoration: const InputDecoration(
                            labelText: "Email",
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                            //hintText: "Email",
                            contentPadding: EdgeInsets.all(20.0),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)))),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 400,
                      height: 60.0,
                      child: TextFormField(
                        controller: uphonecontroller,
                        decoration: InputDecoration(
                            labelText: "${loginController.to.logindata!.phone}",
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                            contentPadding: EdgeInsets.all(20.0),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)))),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(30.0)),
                SizedBox(
                  width: 170.0,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Dashboard();
                      }));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Update",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
