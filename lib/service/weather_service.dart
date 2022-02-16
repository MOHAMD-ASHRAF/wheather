import 'dart:convert';

import 'package:http/http.dart' as http;
class WeatherService{
  String baseUrl = 'https://www.metaweather.com';
  Future<int> getCityId({required String cityName}) async
  {
    Uri url = Uri.parse('$baseUrl/api/location/search/?query=$cityName');
    http.Response response = await http.get(url);

    List<dynamic> data = jsonDecode(response.body);
    int cityId = data[0]['woeid'];
    return cityId;
  }

    void getWeather({required String cityName}) async
    {
      int id = await getCityId(cityName: cityName);
    }
  }
