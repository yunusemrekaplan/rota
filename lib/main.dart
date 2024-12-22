import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:rota/app/app_bindings.dart';
import 'package:rota/utils/routes/app_routes.dart';

import 'utils/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var token = await sendPostRequest();

  if (token != null) {
    await sendGetRequest(token["jwtToken"]);
  }

  runApp(const MyApp());
}

Future<Map<String, dynamic>?> sendPostRequest() async {
  final url = Uri.parse('https://apirota.isgold.com/api/identity/authenticate');
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({'username': "emre.kaplan", 'password': "Celik6944+"});

  try {
    //final client = kIsWeb ? BrowserClient() : http.Client();
    final client = http.Client();
    final response = await client.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      print('Response data: ${response.body}');
    } else {
      print('Failed to send request: ${response.statusCode}');
    }

    return jsonDecode(response.body);
  } catch (e) {
    print('Error: $e');
    return null;
  }
}

Future<void> sendGetRequest(String token) async {
  final url = Uri.parse('https://apirota.isgold.com/api/store');
  final headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $token',
  };

  try {
    //final client = kIsWeb ? BrowserClient() : http.Client();
    final client = http.Client();
    final response = await client.get(url, headers: headers);
    if (response.statusCode == 200) {
      print('Response data: ${response.body}');
    } else {
      print('Failed to send request: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Rota',
      theme: ThemeData(primaryColor: const Color(0xFFC60000)),
      initialBinding: AppBinding(),
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: AppRoutes.initial,
    );
  }
}
