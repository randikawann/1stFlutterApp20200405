import 'package:flutter/material.dart';


class ChoooseLocation extends StatefulWidget {
  @override
  _ChoooseLocationState createState() => _ChoooseLocationState();
}

class _ChoooseLocationState extends State<ChoooseLocation> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('choose location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Text('counter should be enter using this'),
        ],
      ),
    );
  }
}

