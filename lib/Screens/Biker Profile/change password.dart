import 'package:flutter/material.dart';

import '../Product Screen/dashboard.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final oldpassword = TextEditingController();
  final newpassword = TextEditingController();
  bool ishiddenpassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Password"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.all(30.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 400,
                  height: 60.0,
                  child: TextFormField(
                    controller: oldpassword,
                    decoration: const InputDecoration(
                        labelText: "Old Password",
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 18.0),
                        //hintText: "${loginController.to.name}",
                        contentPadding: EdgeInsets.all(15.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        )),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 400,
                  height: 60.0,
                  child: TextFormField(
                    controller: newpassword,
                    decoration: const InputDecoration(
                        labelText: "New Password",
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 18.0),
                        suffixIcon: InkWell(
                          //onTap: () {},
                          child: Icon(
                            Icons.visibility,
                            color: Colors.black,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(20.0),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)))),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(30.0)),
            SizedBox(
              width: 120.0,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
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
                  "Submit",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
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
