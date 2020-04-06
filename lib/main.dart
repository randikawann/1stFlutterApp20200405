import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/loading.dart';
import 'pages/choose_location.dart';


// ||| Description and special things bottom

void main() => runApp(MaterialApp(
//  home: Home(),
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChoooseLocation(),
  },
));


//branch 15listviewbuilder
/*
*
*
*
*
* */


