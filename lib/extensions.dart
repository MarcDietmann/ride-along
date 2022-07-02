import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Future<void> testApi() async {
  Response response = await http.get(Uri.parse("http://localhost:8080/ride"));
  // print(response.body);
  dynamic m = jsonDecode(response.body)["_embedded"]["rides"][0] ;
  Ride r =   Ride.fromJson(m);
  print(r.startingPoint);
  print(r.destination);
}

class Ride {
  late final  String startingPoint;
  late final  String destination;
  late final  DateTime dateOfDeparture;

  Ride.fromJson(Map json){
    startingPoint = json["startingPoint"];
    destination = json["destination"];
    // dateOfDeparture = json["dateOfDeparture"];
  }

}