import 'package:flutter/material.dart';

class HowToUse extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("How to use"),
      ),
      body: Center(
        child: Text("Will show a Video Player"),
      ),
    );
  }
}