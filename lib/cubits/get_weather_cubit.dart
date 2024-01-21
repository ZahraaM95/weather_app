import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import 'package:weather_app/cubits/get_weather_state.dart';
import 'package:weather_app/models/modle_services.dart';
import 'package:weather_app/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  late WeatherModle weatherModle;

  GetWeatherCubit() : super(WeatherinitialState());

  getWeather({required String cityName}) async {
    try {
      weatherModle = await WeatherServices(Dio()).getCurrentweather(cityName: cityName);
      emit(WeatherLoadedState(weatherModle: weatherModle));
    } catch (e) {
      emit(WeatherFailerState(
        errMessage: e.toString(),
      ));
    }
  }
}

// import 'package:bloc/bloc.dart';
// import 'package:dio/dio.dart';

// import 'package:weather_app/cubits/get_weather_state.dart';

// import '../models/modle_services.dart';
// import '../services/weather_services.dart';

// class GetWeatherCubit extends Cubit<WeatherState> {
  

//    late WeatherModle weatherModle;
//   GetWeatherCubit()
//    : super(WeatherinitialState());

//   getWeather({required String cityName}) async {
//     try {
//       WeatherModle weatherModle =
//           await WeatherServices(Dio()).getCurrentweather(cityName: cityName);
//           emit(WeatherLoadedState(weatherModle: weatherModle));
//     } catch (e) {
//       emit(WeatherFailerState(
//         errMessage: e.toString(),
//       ));
//     }
//   }
// }

