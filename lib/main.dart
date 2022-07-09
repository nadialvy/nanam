import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nanam/colors.dart';
import 'package:nanam/dashboard.dart';
import 'package:nanam/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nanam',
      theme: ThemeData(
        primarySwatch: generateMaterialColor(Pallette.primary),
        fontFamily: 'Poppins',
      ),
      home: MainScreen('nad'),
    );
  }
}

class Pallette {
  static const Color primary = Color.fromARGB(255, 40, 54, 24);
}
