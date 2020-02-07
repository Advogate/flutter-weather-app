import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';

class Location{
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async{
    try {
      Position position = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
//      print(position);
      latitude = position.latitude;
      longitude = position.longitude;
    }catch(e){
      print('can\'t get location');
    }

  }
}