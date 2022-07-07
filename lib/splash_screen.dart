import 'dart:async';

import 'package:flutter/material.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:nanam/home.dart';


class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override 
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home())));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 216, 212, 186),
              Color.fromARGB(255, 166, 168, 95),
              Color.fromARGB(255, 134, 97, 55),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DropShadowImage(
              offset: const Offset(5,5),
              scale: 1,
              blurRadius: 10,
              borderRadius: 10,
              image: Image.asset('images/logoNanam.png')
            ),
            Column(
              children: const [
                Text(
                  'Nanam',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'Tanam Tanamanmu!',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}