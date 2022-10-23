import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Privacy"),
      ),
      body: Center(
        child: Text("We will show a PDF here"),
      ),
    );
  }
}