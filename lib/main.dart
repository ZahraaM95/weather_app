import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit.dart';
import 'package:weather_app/views/home_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(builder: (context) {
        return const MaterialApp(
            debugShowCheckedModeBanner: false,
            // theme: ThemeData(
            //   primarySwatch: getWeatherMaterialColor(
            //       BlocProvider.of<GetWeatherCubit>(context).weatherModle.desc),
            // ),
            home: HomeView());
      }),
    );
  }
}

MaterialColor getWeatherMaterialColor(String condition) {
  switch (condition) {
    case "Sunny":
      return Colors.amber; // Sunny
    case "Partly cloudy":
      return Colors.blue; // Partly cloudy
    case "Cloudy":
      return Colors.grey; // Cloudy
    case "Overcast":
      return Colors.grey; // Overcast
    case "Mist":
      return Colors.grey; // Mist
    case "Patchy rain possible":
    case "Patchy snow possible":
    case "Patchy sleet possible":
    case "Patchy freezing drizzle possible":
      return Colors.indigo; // Patchy rain, snow, sleet, freezing drizzle
    case "Thundery outbreaks possible":
      return Colors.deepPurple; // Thundery outbreaks possible
    case "Blowing snow":
    case "Blizzard":
      return Colors.grey; // Blowing snow, Blizzard
    case "Fog":
      return Colors.grey; // Fog
    case "Freezing fog":
      return Colors.grey; // Freezing fog
    case "Patchy light drizzle":
    case "Light drizzle":
    case "Freezing drizzle":
    case "Heavy freezing drizzle":
      return Colors
          .lightBlue; // Patchy light drizzle, drizzle, freezing drizzle
    case "Patchy light rain":
    case "Light rain":
    case "Moderate rain at times":
    case "Moderate rain":
    case "Heavy rain at times":
    case "Heavy rain":
      return Colors.blue; // Patchy light rain, rain
    case "Light freezing rain":
    case "Moderate or heavy freezing rain":
      return Colors
          .blue; // Light freezing rain, moderate or heavy freezing rain
    case "Light sleet":
    case "Moderate or heavy sleet":
      return Colors.blueGrey; // Light sleet, moderate or heavy sleet
    case "Patchy light snow":
    case "Light snow":
    case "Patchy moderate snow":
    case "Moderate snow":
    case "Patchy heavy snow":
    case "Heavy snow":
      return Colors
          .blueGrey; // Patchy light snow, snow, patchy moderate snow, moderate snow, patchy heavy snow, heavy snow
    case "Ice pellets":
      return Colors.blueGrey; // Ice pellets
    case "Light rain shower":
    case "Moderate or heavy rain shower":
    case "Torrential rain shower":
      return Colors
          .lightBlue; // Light rain shower, moderate or heavy rain shower, torrential rain shower
    case "Light sleet showers":
    case "Moderate or heavy sleet showers":
      return Colors
          .blueGrey; // Light sleet showers, moderate or heavy sleet showers
    case "Light snow showers":
    case "Moderate or heavy snow showers":
      return Colors.blue; // Light snow showers, moderate or heavy snow showers
    case "Light showers of ice pellets":
    case "Moderate or heavy showers of ice pellets":
      return Colors
          .blue; // Light showers of ice pellets, moderate or heavy showers of ice pellets
    case "Patchy light rain with thunder":
    case "Moderate or heavy rain with thunder":
      return Colors
          .red; // Patchy light rain with thunder, moderate or heavy rain with thunder
    case "Patchy light snow with thunder":
    case "Moderate or heavy snow with thunder":
      return Colors
          .purple; // Patchy light snow with thunder, moderate or heavy snow with thunder
    default:
      return Colors.grey; // Default color
  }
}
