import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:nanam/detail_screen.dart';
import 'package:nanam/model/data_plant.dart';


class Dashboard extends StatelessWidget {
  final String name;
  const Dashboard(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 243, 218),
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.fromLTRB(15, 40, 15, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[ 
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi $name!',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      'Good Morning!',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 107, 105, 105),
                        fontWeight: FontWeight.w300
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'images/profpict.png',
                  height: 50,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: dataPlant.map((plant){
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return DetailScreen(plant);
                      }));
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Image.asset(
                              plant.imageAsset,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text(
                              textAlign: TextAlign.center,
                              plant.name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ],
                      )
                    ),
                  );
                }).toList()
              ),
            )
          ],
        ),
      ),
    );
  }
}

