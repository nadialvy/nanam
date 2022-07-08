import 'package:flutter/material.dart';
import 'package:nanam/model/data_plant.dart';

class DetailScreen extends StatelessWidget{
  final Plant plant;
  DetailScreen(this.plant);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 243, 218),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              plant.imageDetail,
              scale: 0.6,
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Text(
                textAlign: TextAlign.center,
                plant.name,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                children: [Text(
                  plant.desc,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                )],
              ),
            )
          ],
        ),
      ),
    );
  }
}