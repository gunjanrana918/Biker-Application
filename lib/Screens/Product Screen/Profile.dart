import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Services/controller.dart';
import '../Biker Profile/biker verification.dart';

void main() {}

class Bikerupdatedetails extends StatefulWidget {
  const Bikerupdatedetails({Key? key}) : super(key: key);

  @override
  State<Bikerupdatedetails> createState() => _BikerupdatedetailsState();
}

class _BikerupdatedetailsState extends State<Bikerupdatedetails> {
  static loginController get to => Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomCenter,
              colors: [
                Colors.white.withOpacity(0.1),
                Colors.green.shade100
                //Color.fromRGBO(255, 255, 255, 0.0),
                //Color.fromRGBO(217, 255, 239, 0.1),
              ],
              //   stops: const [
              // 0.0,
              // 1.0,]
            )),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: (const EdgeInsets.all(10.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      child: Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 4,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1),
                                  offset: const Offset(0, 10))
                            ],
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://e7.pngegg.com/pngimages/1008/377/png-clipart-computer-icons-avatar-user-profile-avatar-heroes-black-hair.png",
                                ))),
                      ),
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(padding: EdgeInsets.only(left: 5.0)),
                        Text(
                          "Name",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 6.0)),
                    TextField(
                      decoration: InputDecoration(
                        hintText: '${loginController.to.logindata!.name}',
                        enabledBorder: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 2)),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(padding: EdgeInsets.only(left: 6.0)),
                        Text(
                          "Phone Number",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 6.0)),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "${loginController.to.logindata!.phone}",
                        enabledBorder: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 2)),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(padding: EdgeInsets.only(left: 5.0)),
                        Text(
                          "Address",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 6.0)),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "Address",
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 2)),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(padding: EdgeInsets.only(left: 5.0)),
                        Text(
                          "City",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 6.0)),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "City",
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 2)),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(padding: EdgeInsets.only(left: 5.0)),
                        Text(
                          "State",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 6.0)),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "State",
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 2)),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(padding: EdgeInsets.only(left: 5.0)),
                        Text(
                          "Pincode",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 6.0)),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "Pincode",
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 2)),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                    const Padding(padding: EdgeInsets.all(15.0)),
                    SizedBox(
                      width: 170.0,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const verification();
                          }));
                        },
                        child: const Text(
                          "Update",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
