import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: RanCard(),
));

class RanCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("First Flutter Application"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
      ),
    );
  }
}

