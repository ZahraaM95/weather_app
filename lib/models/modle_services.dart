class WeatherModle {
  final String cityName;
  final DateTime date;
  final double tamp;
  final String? image;
  final String country;
  final String desc;

  WeatherModle(
     {
    required this.cityName,
    required this.date,
    required this.tamp,
    this.image,
    required this.country,
     required this.desc, 
  });
  factory WeatherModle.fromJson(json) {
    return WeatherModle(
    desc:json["current"]["condition"]["text"], 
    cityName: json["location"]["name"], 
    date: DateTime.parse(json["current"]["last_updated"]),
     tamp: json["current"]["temp_c"],
    country: json["location"]["country"],
    image: json["current"]["condition"]["icon"]);
  }
}
   