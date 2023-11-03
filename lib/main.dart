
import 'package:crud_api/widgets/weather.dart';
import 'package:crud_api/widgets/weather_service.dart';
import 'package:crud_api/widgets/weatherlist.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

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
          title: const Text('Weather App'),
        ),
        body: WeatherList(_weatherData),
      ),
    );
  }
}
