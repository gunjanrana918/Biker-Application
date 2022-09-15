import 'package:biker_app/Screens/Order%20Screen/delievered%20%20order.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp());
}

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        primary: true,
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton.icon(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(fontSize: 15, color: Colors.black),
                    backgroundColor: Colors.white54,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 2)),
                  ),
                  onPressed: () => {bottomsheet()},
                  icon: Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colors.black,
                  ),
                  label: Text(
                    'Categories',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
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
                    margin: EdgeInsets.all(10),
                    shadowColor: Colors.grey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10.0)),
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
                            Icons.location_on_sharp,
                            color: Colors.black,
                          ),
                          title: Text(
                            'Address',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ),
                        ListTile(
                          trailing: ElevatedButton(
                            onPressed: () {
                              // Navigator.push(context,
                              //     MaterialPageRoute(builder: (context) {
                              //       return Afteracceptorder();
                              //     }));
                            },
                            child: Text(
                              "Status",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(
                                        width: 1, color: Colors.green)),
                              ),
                            ),
                          ),
                          dense: true,
                          title: Text(
                            'Order ID' + ":" + 'GT12345',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        ListTile(
                          trailing: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Delieveredorder();
                              }));
                            },
                            child: Text(
                              "View",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.blue.shade200),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                          dense: true,
                          title: Text(
                            'Cash!' + ":" + '345',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20.0)),
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }

  bottomsheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          var checkBoxValue;
          return Container(
            height: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                    height: 80,
                    padding: EdgeInsets.only(left: 25.0, right: 25.0),
                    child: Column(
                      children: <Widget>[
                        CheckboxListTile(
                          title: Text('checkbox'),
                          onChanged: (value) {
                            setState(() {
                              checkBoxValue = value;
                            });
                          },
                          value: checkBoxValue,
                        )
                      ],
                    )),

                // CheckboxListTile(
                //     activeColor: Colors.green,
                //     title: Text("Delievered"),
                //     value: checkBoxValue,
                //     onChanged: (value) {
                //       setState(() {
                //         checkBoxValue = value;
                //       });
                //     }),
                // CheckboxListTile(
                //     title: Text("Accept"),
                //     value: checkBoxValue,
                //     onChanged: (value) {
                //       setState(() {
                //         checkBoxValue = value;
                //       });
                //     })
              ],
            ),
          );
        });
  }
}
