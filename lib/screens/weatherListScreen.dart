import 'package:crud_api/widgets/weather.dart';
import 'package:flutter/material.dart';

class WeatherListScreen extends StatelessWidget {
  final List<Weather> weatherData;

  const WeatherListScreen(this.weatherData, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: weatherData.length,
      itemBuilder: (context, index) {
        final weather = weatherData[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: ListTile(
              title: Text(
                  'City: ${weather.city}',
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                'Temperature: ${weather.temperature}°C\nCondition: ${weather.condition}\nHumidity: ${weather.humidity}%\nWind Speed: ${weather.windSpeed} km/h',

              ),
            ),
          ),
        );
      },
    );
  }
}
