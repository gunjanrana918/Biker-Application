import 'package:biker_app/Screens/Product%20Screen/completeorder_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:getwidget/getwidget.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MaterialApp());
}

class Afteracceptorder extends StatefulWidget {
  const Afteracceptorder({Key? key}) : super(key: key);

  @override
  State<Afteracceptorder> createState() => _AfteracceptorderState();
}

class _AfteracceptorderState extends State<Afteracceptorder> {
  final TextEditingController _numberdialer = TextEditingController();
  @override
  void initState() {
    super.initState();
    _numberdialer.text = "8076115217";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Accepted"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        primary: true,
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(top: 30.0)),
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
                    margin: const EdgeInsets.all(20),
                    shadowColor: Colors.grey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ))),
                              const Padding(
                                  padding: EdgeInsets.only(right: 10)),
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.green[200],
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10.0))),
                                      padding: const EdgeInsets.all(6.0),
                                      child: const Text(
                                        'RS.120',
                                        style: TextStyle(fontSize: 15.0),
                                      )))
                            ],
                          ),
                        ),
                        const Divider(
                          height: 2,
                          thickness: 2,
                        ),
                        const Padding(padding: EdgeInsets.only(top: 10.0)),
                        const ListTile(
                          dense: true,
                          leading: Icon(
                            Icons.person_outline_outlined,
                            color: Colors.black,
                          ),
                          title: Text(
                            'Customer Name',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ),
                        const ListTile(
                          dense: true,
                          leading: Icon(
                            Icons.location_on_sharp,
                            color: Colors.black,
                          ),
                          title: Text(
                            '9999999999',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ),
                        const ListTile(
                          dense: true,
                          leading: Icon(
                            Icons.call_outlined,
                            color: Colors.black,
                          ),
                          title: Text(
                            'Address',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
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
                        const Padding(padding: EdgeInsets.only(top: 20.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 170,
                              child: TextButton.icon(
                                style: TextButton.styleFrom(
                                  textStyle: const TextStyle(
                                      fontSize: 15, color: Colors.black),
                                  backgroundColor: Colors.green.shade100,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(
                                          color: Colors.green.shade100,
                                          width: 2)),
                                ),
                                onPressed: () => {},
                                icon: const Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.black,
                                ),
                                label: const Text(
                                  'View on MAP',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(left: 30.0)),
                            Container(
                              height: 50,
                              width: 120,
                              child: TextButton.icon(
                                style: TextButton.styleFrom(
                                  textStyle: const TextStyle(
                                      fontSize: 15, color: Colors.black),
                                  backgroundColor: Colors.green.shade100,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(
                                          color: Colors.green.shade100,
                                          width: 2)),
                                ),
                                onPressed: () {
                                  _callNumber();
                                },
                                icon: const Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                ),
                                label: const Text(
                                  'Call',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                            padding: EdgeInsets.only(
                          top: 15.0,
                        )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const CompleteOrder();
                                }));
                                //alert();
                              },
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
                              child: const Text(
                                "Mark as Delieverd",
                                style: TextStyle(
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
    );
  }

  alert() {
    GFAlert(
      title: "SUCCESS",
      content: "You Complete your Order!",
      bottombar: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GFButton(
            onPressed: () {
              setState(() {
                var showalert = false;
              });
            },
            child: Text("ok"),
          )
        ],
      ),
    );
  }

  _launchPhoneURL(String phoneNumber) async {
    String url = 'tel:' + phoneNumber;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _callNumber() async {
    const number = '8377857529'; //set the number here
    bool? res = await FlutterPhoneDirectCaller.callNumber(number);
  }
}
