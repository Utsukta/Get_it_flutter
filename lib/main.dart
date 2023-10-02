import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:getit/homepage.dart';

import 'user_service.dart'; // Import your service

final getIt = GetIt.instance;
void main() {
  getIt.registerSingleton<UserService>(UserService());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'get_it Example',
      home: MyHomePage(),
    );
  }
}
