// ignore_for_file: unnecessary_new

import 'dart:io';

import 'package:biker_app/Screens/Order%20Screen/Afteraccept_order.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp());
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Future<bool> _onWillPop() async {
      return (await showDialog(
            context: context,
            builder: (context) => new AlertDialog(
              title: const Text('Are you sure?'),
              content: const Text('Do you want to exit'),
              actions: <Widget>[
                // ignore: deprecated_member_use
                new TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('No'),
                ),
                // ignore: deprecated_member_use
                new TextButton(
                  onPressed: () => exit(0),
                  child: const Text('Yes'),
                ),
              ],
            ),
          )) ??
          false;
    }

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: SingleChildScrollView(
          primary: true,
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(top: 20.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("test");
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return const Homepage();
                      // }));
                      //Navigator.of(context).pop(true);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.green.shade300),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(
                                width: 1.0, color: Colors.black)),
                      ),
                    ),
                    child: const Text(
                      "New",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Afteracceptorder();
                      }));
                      // Navigator.of(context).pop(true);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.green.shade300),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(
                                width: 1.0, color: Colors.black)),
                      ),
                    ),
                    child: const Text(
                      "Accepted",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return const Afteracceptorder();
                      // }));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.green.shade300),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(
                                width: 1.0, color: Colors.black)),
                      ),
                    ),
                    child: const Text(
                      "Reject",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 10.0)),
              ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        side: const BorderSide(color: Colors.green),
                      ),
                      margin: const EdgeInsets.all(5),
                      shadowColor: Colors.grey,
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            child: Row(
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(left: 5.0)),
                                Expanded(
                                    flex: 7,
                                    child: Container(
                                        child: const Text(
                                      'Order ID:',
                                      style: TextStyle(fontSize: 16.0),
                                    ))),
                                const Padding(
                                    padding: EdgeInsets.only(right: 10)),
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green[200],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10.0))),
                                        padding: const EdgeInsets.all(6.0),
                                        child: const Text(
                                          '3.7 km',
                                          style: TextStyle(fontSize: 15.0),
                                        )))
                              ],
                            ),
                          ),
                          const Divider(
                            height: 2,
                            thickness: 2,
                          ),
                          Container(
                            height: 60.0,
                            child: Row(
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(left: 10.0)),
                                Expanded(
                                    //flex: 7,
                                    child: Container(
                                        child: const Text(
                                  'Block B, Soami Nagar South, Soami Nagar, New Delhi,',
                                  style: TextStyle(fontSize: 16),
                                ))),
                              ],
                            ),
                          ),
                          ExpansionTile(
                            collapsedIconColor: Colors.black,
                            //collapsedBackgroundColor: Colors.green[200],
                            title: const Text("Item Details"),
                            children: [
                              ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      leading: Image.network(
                                          "https://e7.pngegg.com/pngimages/1008/377/"
                                          "png-clipart-computer-icons-avatar-user-"
                                          "profile-avatar-heroes-black-hair.png"),
                                      title: const Text('Blue'),
                                      subtitle: const Text(
                                          "TOTEM Anti-Static Screen Protector for iPhone 13/13 Pro - Hammer Proof,"),
                                    );
                                  }),
                            ],
                          ),
                          const Padding(padding: EdgeInsets.only(top: 20.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const Afteracceptorder();
                                  }));
                                },
                                child: const Text(
                                  "Accept",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.green),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(left: 30.0)),
                              ElevatedButton(
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  //   return Bikerdetails();
                                  // }));
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        side: const BorderSide(
                                            color: Colors.black87)),
                                  ),
                                ),
                                child: const Text(
                                  "Reject",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
