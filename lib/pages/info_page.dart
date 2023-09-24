import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class InfoPage extends StatefulWidget {
  final String animalName;
  const InfoPage({Key? key, required this.animalName}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  var apiUrl = 'https://api.api-ninjas.com/v1/animals?name=';
  final apiKey = 'NwDVN3S8S+H0kIMM5W4Mhw==LHwAia3PF2iLUbJ0';
  final apiHost = 'animals-by-api-ninjas.p.rapidapi.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: fetchData,
          child: const Text('Click to get animal info!'),
        ),
      ),
    );
  }

  Future<void> fetchData() async {
    apiUrl = '$apiUrl${widget.animalName}';
    try {
      final response = await http.get(
        Uri.parse(apiUrl),
        headers: {
          'X-Api-Key': apiKey,
          // 'X-RapidAPI-Host': apiHost,
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> dataList = json.decode(response.body);

        // Handle the list data here
        for (var item in dataList) {
          if (item is Map<String, dynamic>) {
            print(item); // Print each item in the list
          }
        }
      } else {
        print('Error: ${response.statusCode} ${response.body}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
