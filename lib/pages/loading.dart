import 'package:flutter/material.dart';
import 'package:flutter_app_first/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = "Loading ...";
  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germoay.png', url: 'Europe/Berlin');
    await instance.getTime();
    setState(() {
      time = instance.time;
    });

  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('$time')),
    );
  }
}



