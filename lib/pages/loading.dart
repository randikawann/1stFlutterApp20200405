import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

// ||| Description and special things bottom
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getdata() async{
    Response response = await get('https://jsonplaceholder.typicode.com/todos/1');
    print(response.body);

    // import 'dart:convert'; package
    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Loading screen')),
    );
  }
}


//branch 10flutter packages
/*
* flutter packages url => https://pub.dev/flutter/packages
* json placeholder => for fake apis
* */

