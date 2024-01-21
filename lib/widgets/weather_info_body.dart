// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit.dart';
import 'package:weather_app/models/modle_services.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({Key? key, required weatherModle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var weatherModle = BlocProvider.of<GetWeatherCubit>(context)
        .weatherModle; //تسخدم عندما تكون الكستم متشعبه
    weatherModle.image!.contains("http:");
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff7c94b6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const  Color.fromARGB(255, 159, 181, 212),
                borderRadius: BorderRadius.circular(30),
                // image: const DecorationImage(
                //   image:AssetImage('asset/background.jpg')

                // ),
                // border: Border.all(
                //   width: 8,
                // ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        weatherModle.tamp.toString(),
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        weatherModle.desc,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Image(
                    image: NetworkImage(
                      weatherModle.image!.contains('https:')
                          ? weatherModle.image!
                          : 'https:${weatherModle.image!}',
                    ),
                  ),
                ],
              ),
            ),
            Text(
              weatherModle.cityName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Text(
              weatherModle.country,
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              '${weatherModle.date.hour}:${weatherModle.date.minute}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                weathers(weatherModle),
                weathers(weatherModle),
                weathers(weatherModle),
                weathers(weatherModle),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container weathers(WeatherModle weatherModle) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 159, 181, 212),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: NetworkImage(weatherModle.image!.contains('https:')
                ? weatherModle.image!
                : 'https:${weatherModle.image!}'),
          ),
          Text(
            weatherModle.tamp.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
