// ignore_for_file: avoid_print

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/modle_services.dart';

class WeatherServices {
  final Dio dio;
  final String baseUrl='http://api.weatherapi.com/v1';
  final String apiKay='8bb1e51267d148f49ea195858241701';
  WeatherServices(this.dio);
  Future<WeatherModle> getCurrentweather({
    required String cityName,
  }) async {
    try {
  Response response = await Dio().get(
//'https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/$cityName?unitGroup=metric&key=SM5J89FL4BBF8X8R7BSAKMMXE&contentType=json'
    'https://api.weatherapi.com/v1/current.json?key=8bb1e51267d148f49ea195858241701&q=$cityName&aqi=yes'
//'$baseUrl/current.json?key=$apiKay&q=$cityName&aqi=yes'
      );
  WeatherModle weatherModle = WeatherModle.fromJson(response.data);
  print(response);
  //log("response");

  return weatherModle;

  //catch error 
}on DioException  catch (e) {
  final errerMassinge= e.response?.data["error"]["message"] ??
   "oops there was an error ,try";
   throw Exception(errerMassinge);
 
}catch (e){
  log(e.toString());
  throw Exception("oops there was an error ,try");
}
  }
}
