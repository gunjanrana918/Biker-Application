import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp());
}

class Walletpage extends StatefulWidget {
  const Walletpage({Key? key}) : super(key: key);

  @override
  State<Walletpage> createState() => _WalletpageState();
}

class _WalletpageState extends State<Walletpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("hi")],
      ),
    );
  }
}
