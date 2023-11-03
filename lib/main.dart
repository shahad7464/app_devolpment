
import 'package:crud_api/widgets/weather.dart';
import 'package:crud_api/widgets/weatherlist.dart';
import 'package:flutter/material.dart';
import 'weather_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final WeatherService _weatherService = WeatherService();
  List<Weather> _weatherData = [];

  @override
  void initState() {
    super.initState();
    _fetchWeatherData();
  }

  Future<void> _fetchWeatherData() async {
    final data = await _weatherService.getWeatherData();
    setState(() {
      _weatherData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weather App'),
        ),
        body: WeatherList(_weatherData),
      ),
    );
  }
}
