import 'package:flutter/material.dart';
import 'Self-Care_Activities_Home.dart';
import 'Games/Dancing_Man.dart';
import 'Games/Heliopter.dart';
import 'Games/LightSwitch.dart';

class Games extends StatefulWidget {
  const Games({required this.title});

  final String title;

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Activities_Home()),
            );
          },
        ),
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Stress-Relieving Games"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HelicopterPage()),
                        );
                      },
                      child: Container(
                        width: 105,
                        height: 105,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/helicopter.jpeg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HelicopterPage()),
                        );
                      },
                      child: Container(
                        width: 275,
                        height: 105,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/helicoptertext.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),

              //Tile-2

              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LightSwitch()),
                  );
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 105,
                        height: 105,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/bulb.jpeg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        width: 275,
                        height: 105,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/lighttext.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),

              //Tile-3

              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DancingMan()),
                  );
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 105,
                        height: 105,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/dance.jpeg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        width: 275,
                        height: 105,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/dancetext.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
