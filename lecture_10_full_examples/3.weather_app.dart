import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class CityLocation {
  final String name;
  final double latitude;
  final double longitude;
  final String country;

  CityLocation({
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.country,
  });

  factory CityLocation.fromJson(Map<String, dynamic> json) {
    return CityLocation(
      name: json['name'],
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      country: json['country'] ?? '',
    );
  }
}

class WeatherData {
  final double temperature;
  final double windSpeed;
  final int weatherCode;
  final List<String> dates;
  final List<double> maxTemperatures;
  final List<double> minTemperatures;

  WeatherData({
    required this.temperature,
    required this.windSpeed,
    required this.weatherCode,
    required this.dates,
    required this.maxTemperatures,
    required this.minTemperatures,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    final current = json['current'];
    final daily = json['daily'];

    return WeatherData(
      temperature: (current['temperature_2m'] as num).toDouble(),
      windSpeed: (current['wind_speed_10m'] as num).toDouble(),
      weatherCode: current['weather_code'],
      dates: List<String>.from(daily['time']),
      maxTemperatures: List<double>.from(
        daily['temperature_2m_max'].map((x) => (x as num).toDouble()),
      ),
      minTemperatures: List<double>.from(
        daily['temperature_2m_min'].map((x) => (x as num).toDouble()),
      ),
    );
  }
}

class WeatherService {
  static Future<CityLocation> fetchCityLocation(String cityName) async {
    final response = await http.get(
      Uri.parse(
        'https://geocoding-api.open-meteo.com/v1/search?name=$cityName&count=1',
      ),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      if (data['results'] != null && data['results'].isNotEmpty) {
        return CityLocation.fromJson(data['results'][0]);
      } else {
        throw Exception('City not found');
      }
    } else {
      throw Exception('Failed to search city');
    }
  }

  static Future<WeatherData> fetchWeather(double lat, double lon) async {
    final response = await http.get(
      Uri.parse(
        'https://api.open-meteo.com/v1/forecast'
            '?latitude=$lat'
            '&longitude=$lon'
            '&current=temperature_2m,wind_speed_10m,weather_code'
            '&daily=temperature_2m_max,temperature_2m_min'
            '&forecast_days=5'
            '&timezone=auto',
      ),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return WeatherData.fromJson(data);
    } else {
      throw Exception('Failed to load weather');
    }
  }
}

String getWeatherText(int code) {
  if (code == 0) return 'Clear sky';
  if (code == 1 || code == 2 || code == 3) return 'Partly cloudy';
  if (code == 45 || code == 48) return 'Fog';
  if (code == 51 || code == 53 || code == 55) return 'Drizzle';
  if (code == 61 || code == 63 || code == 65) return 'Rain';
  if (code == 71 || code == 73 || code == 75) return 'Snow';
  if (code == 95) return 'Thunderstorm';
  return 'Unknown weather';
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const WeatherHomeScreen(),
    );
  }
}

class WeatherHomeScreen extends StatefulWidget {
  const WeatherHomeScreen({super.key});

  @override
  State<WeatherHomeScreen> createState() => _WeatherHomeScreenState();
}

class _WeatherHomeScreenState extends State<WeatherHomeScreen> {
  final TextEditingController cityController = TextEditingController();
  bool isLoading = false;
  String errorMessage = '';

  Future<void> searchWeather() async {
    final city = cityController.text.trim();

    if (city.isEmpty) {
      setState(() {
        errorMessage = 'Please enter a city name';
      });
      return;
    }

    setState(() {
      isLoading = true;
      errorMessage = '';
    });

    try {
      final cityLocation = await WeatherService.fetchCityLocation(city);
      final weather = await WeatherService.fetchWeather(
        cityLocation.latitude,
        cityLocation.longitude,
      );

      if (!mounted) return;

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => WeatherDetailsScreen(
            cityLocation: cityLocation,
            weatherData: weather,
          ),
        ),
      );
    } catch (e) {
      setState(() {
        errorMessage = e.toString().replaceFirst('Exception: ', '');
      });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.cloud, size: 90, color: Colors.blue),
            const SizedBox(height: 20),
            const Text(
              'Search Weather by City',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: cityController,
              decoration: const InputDecoration(
                labelText: 'Enter city name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.location_city),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: isLoading ? null : searchWeather,
                child: isLoading
                    ? const CircularProgressIndicator(color: Colors.white)
                    : const Text('Get Weather'),
              ),
            ),
            const SizedBox(height: 20),
            if (errorMessage.isNotEmpty)
              Text(
                errorMessage,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class WeatherDetailsScreen extends StatelessWidget {
  final CityLocation cityLocation;
  final WeatherData weatherData;

  const WeatherDetailsScreen({
    super.key,
    required this.cityLocation,
    required this.weatherData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${cityLocation.name} Weather'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      cityLocation.name,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      cityLocation.country,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      '${weatherData.temperature.toStringAsFixed(1)} °C',
                      style: const TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      getWeatherText(weatherData.weatherCode),
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Wind Speed: ${weatherData.windSpeed.toStringAsFixed(1)} km/h',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              '5-Day Forecast',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: weatherData.dates.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.calendar_today),
                      title: Text(weatherData.dates[index]),
                      subtitle: Text(
                        'Min: ${weatherData.minTemperatures[index].toStringAsFixed(1)} °C | '
                            'Max: ${weatherData.maxTemperatures[index].toStringAsFixed(1)} °C',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}