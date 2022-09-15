import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CompleteOrder extends StatefulWidget {
  const CompleteOrder({Key? key}) : super(key: key);

  @override
  State<CompleteOrder> createState() => _CompleteOrderState();
}

class _CompleteOrderState extends State<CompleteOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: GFAlert(
              title: "SUCCESS",
              content: "You Complete your Order!",
              // bottombar: Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     GFButton(
              //       onPressed: () {
              //         setState(() {
              //           var showalert = false;
              //         });
              //       },
              //       child: Text("ok"),
              //     )
              //   ],
              // ),
            ),
          )
        ],
      ),
    );
  }
}
