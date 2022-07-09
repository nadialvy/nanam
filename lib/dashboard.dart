import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:nanam/detail_screen.dart';
import 'package:nanam/model/data_plant.dart';

class MainScreen extends StatelessWidget{
  final String name;
  const MainScreen(this.name);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          if (constraints.maxWidth <= 600){
            return Dashboard(2, name);
          }else if(constraints.maxWidth <= 900){
            return Dashboard(4, name);
          } else {
            return Dashboard(6, name);
          }
        },
      )
    );
  }
}

class Dashboard extends StatefulWidget {
  final int gridCount;
  final String name;
  const Dashboard(this.gridCount, this.name);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final controller = TextEditingController();
  List<Plant> plants = dataPlant;

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
                      'Hi ${widget.name}!',
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
            const SizedBox(height: 30),
            //search bar
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Color.fromARGB(255, 40, 54, 24))
                ),
              ),
              onChanged: searchPlant,
            ),
            const SizedBox(height: 30,),
            Expanded(
              child: GridView.count(
                crossAxisCount: widget.gridCount,
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

  void searchPlant(String query){
    final sugesstions = plants.where((plant) {
      final plantName = plant.name.toLowerCase();
      final input = query.toLowerCase();

      return plantName.contains(input);
    }).toList();

    setState(() => plants = sugesstions);
  }
}

