import 'package:biker_app/Services/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login.dart';

class SignUP extends StatefulWidget {
  const SignUP({Key? key}) : super(key: key);

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  DataController dataController = Get.put(DataController());
  late bool ishiddenpassword = true;
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    dataController.namecontroller.dispose();
    dataController.mobilecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
              ),
              const SizedBox(
                height: 60.0,
              ),
              // Padding(padding: EdgeInsets.only(top: 10.0)),
              const Text(
                "Sign UP",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.only(top: 10.0)),
              const Text(
                "Welcome!",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),
              ),
              const Padding(padding: EdgeInsets.all(20.0)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.only(left: 10.0)),
                  const Text(
                    "Name",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                controller: dataController.namecontroller,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(20.0),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.green, width: 3.0),
                        borderRadius: BorderRadius.circular(50.0))),
              ),
              const Padding(padding: EdgeInsets.only(top: 30.0)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(padding: EdgeInsets.only(left: 10.0)),
                  Text(
                    "Mobile",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                controller: dataController.mobilecontroller,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(20.0),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.green, width: 3.0),
                      borderRadius: BorderRadius.circular(50.0)),
                ),
              ),
              const Padding(padding: EdgeInsets.all(15.0)),
              ElevatedButton(
                onPressed: () {
                  // if (dataController.namecontroller.text.isEmpty) {
                  //   Fluttertoast.showToast(
                  //       msg: "Please enter name",
                  //       timeInSecForIosWeb: 3,
                  //       fontSize: 20.0,
                  //       textColor: Colors.white,
                  //       backgroundColor: Colors.red,
                  //       toastLength: Toast.LENGTH_LONG,
                  //       gravity: ToastGravity.BOTTOM);
                  // } else if (dataController.mobilecontroller.text != 10) {
                  //   Fluttertoast.showToast(
                  //       msg: "Please enter 10 Digit mobile number",
                  //       timeInSecForIosWeb: 3,
                  //       fontSize: 20.0,
                  //       textColor: Colors.white,
                  //       backgroundColor: Colors.red,
                  //       toastLength: Toast.LENGTH_LONG,
                  //       gravity: ToastGravity.BOTTOM);
                  // } else {
                  //   dataController.createUserInformationfromApi();
                  //   Fluttertoast.showToast(
                  //       msg:
                  //           "Wait for sometime untill Admin Approve your request",
                  //       timeInSecForIosWeb: 3,
                  //       fontSize: 20.0,
                  //       textColor: Colors.black,
                  //       backgroundColor: Colors.green.shade100,
                  //       toastLength: Toast.LENGTH_LONG,
                  //       gravity: ToastGravity.BOTTOM);
                  //   dataController.namecontroller.clear();
                  //   dataController.mobilecontroller.clear();
                  // }
                  // Navigator.of(context).pop(false);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: const Text(
                  "Sign UP",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(padding: EdgeInsets.all(20.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an Account?",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Loginscreen();
                        }));
                        //dataController.createUserInformationfromApi();
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(fontSize: 19.0, color: Colors.green),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      ishiddenpassword = !ishiddenpassword;
    });
  }
}
