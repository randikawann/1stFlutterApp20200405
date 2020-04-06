import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async{
    Response response = await get('http://worldtimeapi.org/api/timezone/Europe/London');
//    print(response.body);
    // import 'dart:convert'; package
    Map data = jsonDecode(response.body);

    //get properties from data
    String datetime = data['utc_datetime'];
//    String off_set = data['utc_offset']; // --- +01:00
    String off_set = data['utc_offset'].substring(1,3); // --- 01
    print('$off_set');

    // create date time object
    DateTime now = DateTime.parse(datetime); // --- 2020-04-06 07:23:37.725864Z
    now = now.add(Duration(hours: int.parse(off_set))); // --- 2020-04-06 08:28:28.952756Z
    print(now);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Loading screen')),
    );
  }
}



