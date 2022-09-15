import 'package:biker_app/Screens/Biker%20Profile/biker%20verification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../Services/controller.dart';

void main() {
  runApp(const MaterialApp());
}

class Bikerdetails extends StatefulWidget {
  const Bikerdetails({Key? key}) : super(key: key);

  @override
  State<Bikerdetails> createState() => _BikerdetailsState();
}

class _BikerdetailsState extends State<Bikerdetails> {
  static loginController get to => Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Details"),
        backgroundColor: Colors.blue,
      ),
      body: GetBuilder<loginController>(
        init: loginController(),
        builder: (_) => Stack(
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
                      Center(
                        child: Stack(children: [
                          Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 4,
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor),
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
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.white10, width: 1)),
                                  child: IconButton(
                                    icon: const Icon(Icons.edit),
                                    onPressed: () {
                                      _showDialog();
                                    },
                                  )))
                        ]),
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
                          enabledBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 2)),
                          hintText: "${loginController.to.logindata!.name}",
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
                        keyboardType: TextInputType.number,
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
                            "Next",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
      ),
    );
  }

  Future<void> _showDialog() {
    // ignore: missing_return
    return showDialog(
        context: this.context,
        builder: (BuildContext) {
          return AlertDialog(
              title: const Text('Do You want to Take Photo From?'),
              content: SingleChildScrollView(
                  child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: const Text('Gallery'),
                    onTap: () {
                      opengallery();
                      Navigator.of(this.context).pop(false);
                    },
                  ),
                  const Padding(padding: EdgeInsets.only(top: 8.0)),
                  GestureDetector(
                    child: const Text('Camera'),
                    onTap: () {
                      openCamera();
                      Navigator.of(this.context).pop(false);
                    },
                  )
                ],
              )));
        });
  }

  Future<void> opengallery() async {
    // ignore: deprecated_member_use
    var choosedimage =
        await new ImagePicker().pickImage(source: ImageSource.gallery);
    //set source: ImageSource.camera to get image from camera
    setState(() {
      isimgselected = true;
      var uploadimage = choosedimage as XFile;
    });
  }

  var isimgselected = false;
  late XFile? uploadimage = null;
  Future<void> openCamera() async {
    // ignore: deprecated_member_use
    var choosedimage =
        await new ImagePicker().pickImage(source: ImageSource.camera);
    this.setState(() {
      isimgselected = true;
      var uploadimage = choosedimage as XFile;
    });
  }
}
