import 'dart:convert';
import 'package:crud_api/widgets/weather.dart';

class WeatherService {
  Future<List<Weather>> getWeatherData() async {
    final String jsonData = '''
      [
        {
          "city": "New York",
          "temperature": 20,
          "condition": "Clear",
          "humidity": 60,
          "windSpeed": 5.5
        },
        {
          "city": "Los Angeles",
          "temperature": 25,
          "condition": "Sunny",
          "humidity": 50,
          "windSpeed": 6.8
        },
        {
          "city": "London",
          "temperature": 15,
          "condition": "Partly Cloudy",
          "humidity": 70,
          "windSpeed": 4.2
        },
        {
          "city": "Tokyo",
          "temperature": 28,
          "condition": "Rainy",
          "humidity": 75,
          "windSpeed": 8.0
        },
        {
          "city": "Sydney",
          "temperature": 22,
          "condition": "Cloudy",
          "humidity": 55,
          "windSpeed": 7.3
        }
      ]
    ''';

    final List<dynamic> data = json.decode(jsonData);

    return data.map((json) => Weather(
      json['city'],
      json['temperature'],
      json['condition'],
      json['humidity'],
      json['windSpeed'],
    )).toList();
  }
}
