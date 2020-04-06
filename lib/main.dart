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


//branch 14routedata
/*
* intl => https://pub.dev/packages/intl   === data/number formating and parsing
* flutter_spinkit => https://pub.dev/packages/flutter_spinkit#-installing-tab- == for get load icon
*
*
* */


