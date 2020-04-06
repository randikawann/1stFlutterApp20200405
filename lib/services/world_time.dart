import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;  //lacation name for UI
  String time;  //the time in that lacation
  String flag;  //url to an assets flag from
  String url; //locatoin url for api endpoint

  //

  //WorldTime instance = WorldTime(location: 'Berlin', flag: 'germoay.png', url: 'Europe/Berlin');
  //instance.getTime()

  WorldTime({this.location, this.flag, this.url});


  Future<void> getTime() async{
//    baseurl = http://worldtimeapi.org/api/timezone/Europe/London
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
//    print(response.body);
    // import 'dart:convert'; package
    Map data = jsonDecode(response.body);

    //get properties from data
    String datetime = data['utc_datetime'];
//    String off_set = data['utc_offset']; // --- +01:00
    String off_set = data['utc_offset'].substring(1,3); // --- 01
//    print('$off_set');

    // create date time object
    DateTime now = DateTime.parse(datetime); // --- 2020-04-06 07:23:37.725864Z
    now = now.add(Duration(hours: int.parse(off_set))); // --- 2020-04-06 08:28:28.952756Z

    //set the time property
    time = now.toString();
  }




}


