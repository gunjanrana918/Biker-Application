import 'package:biker_app/Screens/Product%20Screen/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp());
}

class verification extends StatefulWidget {
  const verification({Key? key}) : super(key: key);

  @override
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
  final acccountholdername = TextEditingController();
  final bankname = TextEditingController();
  final branchname = TextEditingController();
  final ifsccode = TextEditingController();
  final accontnumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verification details"),
        backgroundColor: Colors.blue,
      ),
      body: Stack(fit: StackFit.expand, children: [
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
                padding: (EdgeInsets.all(10.0)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 35.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 5.0)),
                          Text(
                            "Aadhar Card",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 8.0)),
                      Container(
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: const InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 2)),
                                  ),
                                ),
                              ),
                              Container(
                                // width: 100,
                                // height: 40,
                                child: TextButton.icon(
                                  style: TextButton.styleFrom(
                                    textStyle: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                    backgroundColor: Colors.white54,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        side: BorderSide(
                                            color: Colors.green, width: 2)),
                                  ),
                                  onPressed: () => {},
                                  icon: Icon(
                                    Icons.file_upload_outlined,
                                  ),
                                  label: Text(
                                    'Upload',
                                  ),
                                ),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 5.0)),
                          Text(
                            "Pan Card",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 3.0)),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.green, width: 2)),
                                ),
                              ),
                            ),
                            Container(
                              //height: 40,
                              //width: 100,
                              child: TextButton.icon(
                                style: TextButton.styleFrom(
                                  textStyle: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                  backgroundColor: Colors.white54,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24.0),
                                      side: BorderSide(
                                          color: Colors.green, width: 2)),
                                ),
                                onPressed: () => {},
                                icon: Icon(
                                  Icons.file_upload_outlined,
                                ),
                                label: Text(
                                  'Upload',
                                ),
                              ),
                            )
                          ]),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 5.0)),
                          Text(
                            "Driving License",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 3.0)),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.green, width: 2)),
                                ),
                              ),
                            ),
                            Container(
                              //height: 10,
                              // width: 100,
                              child: TextButton.icon(
                                style: TextButton.styleFrom(
                                  textStyle: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                  backgroundColor: Colors.white54,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24.0),
                                      side: BorderSide(
                                          color: Colors.green, width: 2)),
                                ),
                                onPressed: () => {},
                                icon: Icon(
                                  Icons.file_upload_outlined,
                                ),
                                label: Text(
                                  'Upload',
                                ),
                              ),
                            )
                          ]),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 5.0)),
                          Text(
                            "Bike RC",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 3.0)),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.green, width: 2)),
                                ),
                              ),
                            ),
                            Container(
                              // height: 40,
                              //width: 100,
                              child: TextButton.icon(
                                style: TextButton.styleFrom(
                                  textStyle: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                  backgroundColor: Colors.white54,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24.0),
                                      side: BorderSide(
                                          color: Colors.green, width: 2)),
                                ),
                                onPressed: () => {},
                                icon: Icon(
                                  Icons.file_upload_outlined,
                                ),
                                label: Text(
                                  'Upload',
                                ),
                              ),
                            )
                          ]),
                      SizedBox(
                        height: 35.0,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Bank Account Details",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                          ]),
                      Padding(padding: EdgeInsets.only(top: 25.0)),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Account Holder Name",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      TextField(
                        controller: acccountholdername,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 2)),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bank Name",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      TextField(
                        controller: bankname,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 2)),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Account No.",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      TextField(
                        controller: accontnumber,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 2)),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Branch Name",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      TextField(
                        controller: branchname,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 2)),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "IFSC Code",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      TextField(
                        controller: ifsccode,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 2)),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(15.0)),
                      SizedBox(
                        width: 170.0,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Dashboard();
                            }));
                          },
                          child: Text(
                            "Submit",
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
                      )
                    ]),
              )),
        ),
      ]),
    );
  }
}
