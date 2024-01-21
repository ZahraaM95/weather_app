// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:weather_app/models/modle_services.dart';
class WeatherState {}

 class WeatherinitialState extends WeatherState {}
class WeatherLoadedState extends WeatherState {
  WeatherModle weatherModle;
  WeatherLoadedState({
    required this.weatherModle,
  });
 }
class WeatherFailerState extends WeatherState {
  final String errMessage;
  WeatherFailerState({
    required this.errMessage,
  });
}

