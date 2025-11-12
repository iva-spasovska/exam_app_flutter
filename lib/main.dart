import 'package:flutter/material.dart';
import 'package:lab1/screens/details.dart';
import 'package:lab1/screens/home.dart';

import 'models/exam_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Распоред за испити - 221032',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      initialRoute: "/",
      routes: {
          "/": (context) => const MyHomePage(title: 'Распоред за испити - 221032'),
          "/details": (context) => const DetailsPage(),
        },
    );
  }
}
