import 'package:flutter/material.dart';

void main() {}

class Delieveredorder extends StatefulWidget {
  const Delieveredorder({Key? key}) : super(key: key);

  @override
  State<Delieveredorder> createState() => _DelieveredorderState();
}

class _DelieveredorderState extends State<Delieveredorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Successfully Delivered"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        primary: true,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 30.0)),
            ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.green),
                    ),
                    margin: EdgeInsets.all(20),
                    shadowColor: Colors.grey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          child: Row(
                            children: [
                              const Padding(
                                  padding: EdgeInsets.only(left: 10.0)),
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                      child: Text(
                                    '08-09-2022',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ))),

                              // Expanded(
                              //     flex: 3,
                              //     child: Container(
                              //         padding: EdgeInsets.all(6.0),
                              //         child: Text(
                              //           'RS.120',
                              //           style: TextStyle(
                              //               fontSize: 15.0,
                              //               color: Colors.green,
                              //               fontWeight: FontWeight.bold),
                              //         )))
                            ],
                          ),
                        ),
                        Divider(
                          height: 2,
                          thickness: 2,
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 10.0)),
                            Text(
                              "Order ID:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(padding: EdgeInsets.only(left: 5.0)),
                            Text(
                              "GT1234",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        ListTile(
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
                        ListTile(
                          dense: true,
                          leading: Icon(
                            Icons.location_on_outlined,
                            color: Colors.black,
                          ),
                          title: Text(
                            'Address',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 10.0)),
                            Text(
                              "Payment mode !",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(padding: EdgeInsets.only(left: 5.0)),
                            Text(
                              "COD",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Padding(padding: EdgeInsets.only(left: 120.0)),
                            Text(
                              "400",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.green,
                                  fontSize: 18.0),
                            ),
                          ],
                        ),
                        ExpansionTile(
                          collapsedIconColor: Colors.black,
                          //collapsedBackgroundColor: Colors.green[200],
                          title: Text("Total Items"),
                          children: [
                            ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    leading: Image.network(
                                        "https://e7.pngegg.com/pngimages/1008/377/"
                                        "png-clipart-computer-icons-avatar-user-"
                                        "profile-avatar-heroes-black-hair.png"),
                                    title: Text('Blue'),
                                    subtitle: Text(
                                        "TOTEM Anti-Static Screen Protector for iPhone 13/13 Pro - Hammer Proof,"),
                                  );
                                }),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 170,
                              child: TextButton.icon(
                                style: TextButton.styleFrom(
                                  textStyle: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                  backgroundColor: Colors.green.shade100,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(
                                          color: Colors.green.shade100,
                                          width: 2)),
                                ),
                                onPressed: () => {},
                                icon: Icon(
                                  Icons.download_outlined,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  'Download Invoice',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(left: 30.0)),
                            Container(
                              height: 50,
                              width: 120,
                              child: TextButton.icon(
                                style: TextButton.styleFrom(
                                  textStyle: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                  backgroundColor: Colors.green.shade100,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(
                                          color: Colors.green.shade100,
                                          width: 2)),
                                ),
                                onPressed: () => {},
                                icon: Icon(
                                  Icons.support_agent,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  'Support',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
