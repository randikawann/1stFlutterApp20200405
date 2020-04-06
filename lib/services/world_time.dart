import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;  //lacation name for UI
  String time;  //the time in that lacation
  String flag;  //url to an assets flag from
  String url; //locatoin url for api endpoint
  bool isDaytime;

  //

  //WorldTime instance = WorldTime(location: 'Berlin', flag: 'germoay.png', url: 'Europe/Berlin');
  //instance.getTime()

  WorldTime({this.location, this.flag, this.url});


  Future<void> getTime() async{

    try{
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

      //select day or night time
      isDaytime = now.hour> 6 && now.hour<20 ? true : false;
      //set the time property
//      time = now.toString();  // --- 2020-04-06 13:32:58.736113Z
      time = DateFormat.jm().format(now);  // --- 1:32 PM



    }catch (e){
      time = "Could not load...";
    }
  }




}


