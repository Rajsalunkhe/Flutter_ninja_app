import 'package:flutter/material.dart';

import 'features/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ninja Assignment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        // Uncomment if you have set up your custom font:
        // fontFamily: 'AlternateGothicNo2D',
      ),
      home: const HomeScreen(),
    );
  }
}







