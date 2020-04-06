import 'package:flutter/material.dart';
import 'package:flutter_app_first/main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    //get data from routing
    data = ModalRoute.of(context).settings.arguments;
    print(data);

    //selectbackgound image acoording to day and night
    String bgImage = data['isDayTime'] ? 'day.png' : 'night.png';
    //topbarcolor
    Color bgcolor = data['isDayTime'] ? Colors.blue : Colors.indigo[700];

    return Scaffold(
      backgroundColor: bgcolor ,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit:  BoxFit.cover,
            )
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                    onPressed: (){
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(Icons.edit_location),
                    label: Text("Edit Location"),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          letterSpacing: 2.0
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.0,),
                Text(
                  data['time'],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      letterSpacing: 2.0
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
