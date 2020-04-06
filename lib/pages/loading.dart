import 'package:flutter/material.dart';
import 'package:flutter_app_first/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = "Loading ...";
  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germoay.png', url: 'Europe/Berlin');
    await instance.getTime();

//    Navigator.pushNamed(context, '/home'); //only load new route
  Navigator.pushReplacementNamed(context, '/home', arguments: {
    'location': instance.location,
    'flag': instance.flag,
    'time': instance.time,
    'isDayTime': instance.isDaytime,
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
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitFoldingCube(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}



