import 'package:flutter/material.dart';

class Submitted extends StatelessWidget {
  const Submitted({Key? key}) : super(key: key);
  static const routeName = "submitt";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("Thanks for submitting"),
    );
  }
}
