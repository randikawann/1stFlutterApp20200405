import 'package:flutter/material.dart';

class ChoooseLocation extends StatefulWidget {
  @override
  _ChoooseLocationState createState() => _ChoooseLocationState();
}

class _ChoooseLocationState extends State<ChoooseLocation> {

  //use to test async functions
  void getdata(){

    //simulate network request for user name
    Future.delayed(Duration(seconds: 3), (){
      print('yoshi');
    });
  }

  //async funtion
    //function wait untill print yoshi2...
  void getdata2() async {

    //simulate network request for user name
    await Future.delayed(Duration(seconds: 3), (){
      print('yoshi2');
    });

    //simulate network request for user name
    Future.delayed(Duration(seconds: 2), (){
      print('bigger 2');
    });
  }

  void getdata3() async {

    //value set to name variable...
    String name = await Future.delayed(Duration(seconds: 3), (){
      return 'yoshi2';
    });

    //simulate network request for user name
    String shape = await Future.delayed(Duration(seconds: 2), (){
      return 'bigger 2';
    });

    print("async waiting value is $name is used $shape");
  }


  int currentstate = 0;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    getdata();
    getdata2();
    getdata3();
  }


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
          RaisedButton(
            onPressed: (){
              setState(() {
                currentstate += 1;
              });
            },
            child: Text('click button with state ${currentstate}'),


          ),
        ],
      ),
    );
  }
}


