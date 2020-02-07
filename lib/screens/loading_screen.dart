import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    getLocation();
    super.initState();
  }
  void getLocation()async{
    var newLocation = new Location();
    await newLocation.getCurrentLocation();
//    print(newLocation.longitude);
  }
  void getData()async{
    http.Response response = await http.get('https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22');
    if(response.statusCode == 200){
      String data = response.body;
    }else{
      print(response.statusCode);
    }
  }
  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
//      body: Center(
//        child: RaisedButton(
//          onPressed: () {
//            getLocation();
//            //Get the current location
//          },
//          child: Text('Get Location'),
//        ),
//      ),
    );
  }
}
