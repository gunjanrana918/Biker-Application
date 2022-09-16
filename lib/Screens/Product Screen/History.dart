import 'package:biker_app/Screens/Order%20Screen/delievered%20%20order.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp());
}

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  bool checkBoxdelivery = false;
  bool checkBoxcancel = false;
  bool checkBoxreplace = false;
  bool checkBoxcod = false;
  bool checkBoxonline = false;
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
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton.icon(
                  style: TextButton.styleFrom(
                    textStyle:
                        const TextStyle(fontSize: 15, color: Colors.black),
                    backgroundColor: Colors.white54,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(color: Colors.black, width: 2)),
                  ),
                  onPressed: () => {bottomsheet()},
                  icon: const Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colors.black,
                  ),
                  label: const Text(
                    'Categories',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
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
                    margin: const EdgeInsets.all(10),
                    shadowColor: Colors.grey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                            child: const Text(
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
                                    side: const BorderSide(
                                        width: 1, color: Colors.green)),
                              ),
                            ),
                          ),
                          dense: true,
                          title: const Text(
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
                                return const Delieveredorder();
                              }));
                            },
                            child: const Text(
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
                          title: const Text(
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

  bottomsheet() => showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CheckboxListTile(
                  activeColor: Colors.green,
                  title: const Text(
                    "Delievered",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                  value: checkBoxdelivery,
                  selected: checkBoxdelivery,
                  onChanged: (newValue) {
                    setState(() {
                      checkBoxdelivery = newValue as bool;
                    });
                  }),
              CheckboxListTile(
                  title: const Text(
                    "Canceled",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                  value: checkBoxcancel,
                  onChanged: (value) {
                    setState(() {
                      //checkBoxValue = value!;
                    });
                  }),
              CheckboxListTile(
                  title: const Text(
                    "Replace",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                  value: checkBoxreplace,
                  onChanged: (value) {
                    // setState(() {
                    //   checkBoxValue = value!;
                    // });
                  }),
              CheckboxListTile(
                  title: const Text(
                    "COD",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                  value: checkBoxcod,
                  onChanged: (value) {
                    // setState(() {
                    //   checkBoxValue = value!;
                    // });
                  }),
              CheckboxListTile(
                  title: const Text(
                    "Online",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                  value: checkBoxonline,
                  onChanged: (value) {
                    checkBoxonline = value!;
                    print("TEST");
                    print(value);
                    // setState(() {
                    //   checkBoxValue = value!;
                    // });
                  }),
            ],
          ),
        );
      });
}
