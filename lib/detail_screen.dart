import 'package:flutter/material.dart';
import 'package:nanam/model/data_plant.dart';

class DetailScreen extends StatelessWidget{
  final Plant plant;
  DetailScreen(this.plant);

  @override
  Widget build(BuildContext context){
  var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 243, 218),
      body: Stack(
        children: [ 
          Container(
            color: Colors.white,
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  plant.imageDetail,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                      const FavoriteButton()
                    ],
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'About :',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 66, 65, 65)
                        ),
                      ),
                      Text(
                        plant.desc,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Card(
                          color: const Color.fromARGB(255, 221, 162, 94),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(widthDevice * 0.1, 10, widthDevice * 0.1, 10),
                            child: Column(
                              children: [
                                const Icon(Icons.sunny),
                                const SizedBox(height: 8,),
                                Text(
                                  plant.light,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Card(
                          color: const Color.fromARGB(255, 221, 162, 94),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(widthDevice * 0.1, 10, widthDevice * 0.1, 10),
                            child: Column(
                              children: [
                                const Icon(Icons.monetization_on),
                                const SizedBox(height: 8,),
                                Text(
                                  plant.startPrice,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Card(
                          color: const Color.fromARGB(255, 221, 162, 94),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(widthDevice * 0.1, 10, widthDevice * 0.1, 10),
                            child: Column(
                              children: [
                                const Icon(Icons.thermostat),
                                const SizedBox(height: 8,),
                                Text(
                                  plant.rangeTemp
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Card(
                          color: const Color.fromARGB(255, 221, 162, 94),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(widthDevice * 0.1, 10, widthDevice * 0.1, 10),
                            child: Column(
                              children: [
                                const Icon(Icons.water_drop),
                                const SizedBox(height: 8,),
                                Text(
                                  plant.water
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,)
              ],
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.black,
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
          ))
        ],
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () { 
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: const EdgeInsets.all(25),
        primary: Colors.green,
        onPrimary: Colors.grey
      ),
      child: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.black,
      ),
    );
  }
}