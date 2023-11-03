import 'package:flutter/material.dart';
import 'weather.dart';

class WeatherList extends StatelessWidget {
  final List<Weather> weatherData;

  const WeatherList(this.weatherData, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: weatherData.length,
      itemBuilder: (context, index) {
        final weather = weatherData[index];
        return ListTile(
          title: Text(weather.city),
          subtitle: Text(
            'Temperature: ${weather.temperature}°C\nCondition: ${weather.condition}\nHumidity: ${weather.humidity}%\nWind Speed: ${weather.windSpeed} km/h',
          ),
        );
      },
    );
  }
}
