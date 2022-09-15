import 'package:biker_app/Services/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bikerpersonal details.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
  ));
}

late SharedPreferences localstorage;

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  loginController LoginController = Get.put(loginController());
  bool ishiddenpassword = true;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    LoginController.loginidcontroller.dispose();
    LoginController.passwordcontroller.dispose();
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
                "Sign in",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 5.0)),
              const Text(
                "Welcome back",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),
              ),
              const Padding(padding: EdgeInsets.all(30.0)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(padding: EdgeInsets.only(left: 10.0)),
                  Text(
                    "Login ID",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                controller: LoginController.loginidcontroller,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(20.0),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.green, width: 3.0),
                      borderRadius: BorderRadius.circular(50.0),
                    )),
              ),
              const Padding(padding: EdgeInsets.only(top: 25.0)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(padding: EdgeInsets.only(left: 10.0)),
                  Text(
                    "Password",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                controller: LoginController.passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(20.0),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.green, width: 3.0),
                      borderRadius: BorderRadius.circular(50.0)),
                  suffixIcon: InkWell(
                    onTap: _togglePasswordView,
                    child: const Icon(
                      Icons.visibility,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      child: const Text(
                        "Forgot Password",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {},
                    )
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(20.0)),
              ElevatedButton(
                onPressed: () {
                  LoginController.getuserdetails();
                  print(LoginController.loginidcontroller.text);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Bikerdetails()));
                  // if (LoginController.loginidcontroller.text.isEmpty) {
                  //   Fluttertoast.showToast(
                  //       msg: "Please enter loginid",
                  //       timeInSecForIosWeb: 2,
                  //       fontSize: 20.0,
                  //       textColor: Colors.white,
                  //       backgroundColor: Colors.red,
                  //       toastLength: Toast.LENGTH_LONG,
                  //       gravity: ToastGravity.CENTER);
                  // }
                  // if (LoginController.passwordcontroller.text.isEmpty) {
                  //   Fluttertoast.showToast(
                  //       msg: "Enter password",
                  //       timeInSecForIosWeb: 2,
                  //       fontSize: 20.0,
                  //       textColor: Colors.white,
                  //       backgroundColor: Colors.red,
                  //       toastLength: Toast.LENGTH_LONG,
                  //       gravity: ToastGravity.CENTER);
                  // } else if (_formKey.currentState!.validate()) {
                  //   LoginController.getuserdetails();
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => Bikerdetails()));
                  //   Navigator.of(context).pop(false);
                  // } else {
                  //   Fluttertoast.showToast(
                  //       msg: "Please valid details",
                  //       timeInSecForIosWeb: 2,
                  //       fontSize: 20.0,
                  //       textColor: Colors.white,
                  //       backgroundColor: Colors.red,
                  //       toastLength: Toast.LENGTH_LONG,
                  //       gravity: ToastGravity.CENTER);
                  // }

                  // Navigator.pushAndRemoveUntil(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (BuildContext context) => const Bikerdetails(),
                  //   ),
                  //   (route) => false,);
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
                  "Sign in",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(padding: EdgeInsets.all(20.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an Account?",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Sign up",
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
