import 'package:flutter/material.dart';
import 'package:weather_app/service/weather_service.dart';

class SearchPage extends StatelessWidget {
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('search'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: TextField(
            onSubmitted: (data){
              cityName = data;
              WeatherService service = WeatherService();
              service.getWeather(cityName: cityName!);
              },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text('search'),
              suffix: Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}
