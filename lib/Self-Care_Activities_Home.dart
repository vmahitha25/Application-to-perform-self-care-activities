import 'package:flutter/material.dart';
import 'package:major_project/Meme%20Generator/meme_generator_home.dart';
import 'Daily Activities/dailyactivtities_home.dart';
import 'Games.dart';
import 'Music/MusicPlayer.dart';
import 'Quotes/quotes.dart';
import 'Stress_Test/stress_test.dart';
import 'auth_controller.dart';
import 'consult_therapist.dart';
import 'firstpage.dart';
import 'jokes.dart';
import 'shareyourstory.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.indigo),
    debugShowCheckedModeBanner: false,
  ));
}

class Activities_Home extends StatefulWidget {
  Activities_Home({
    Key? key,
  }) : super(key: key);

  @override
  _Activities_HomeState createState() => _Activities_HomeState();
}

class _Activities_HomeState extends State<Activities_Home> {
  final List<String> imageList = [
    "assets/music1.png",
    "assets/games1.png",
    "assets/quotes.png",
    "assets/memes.png",
    "assets/jokes.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Self Care Activities"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),

          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    image: DecorationImage(
                        image: AssetImage("img/activities.png"),
                        fit: BoxFit.fill)),
                child: null),
            ListTile(
              title: const Text("Home"),
              trailing: const Icon(Icons.home),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => chatApp(
                        email: '',
                      )),
                );
              },
            ),
            ListTile(
              title: new Text("Stress Test"),
              trailing: new Icon(Icons.note_alt_outlined),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Stress_Test()),
                );
              },
            ),
            ListTile(
              title: new Text("Daily Activities"),
              trailing: new Icon(Icons.insights),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const DailyActivities_Home(title: 'title')),
                );
              },
            ),
            ListTile(
              title: new Text("Self-Care Activities"),
              trailing: new Icon(Icons.event_note),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Activities_Home()),
                );
              },
            ),
            ListTile(
              title: new Text("Share your Story"),
              trailing: new Icon(Icons.edit),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Journal()),
                );
              },
            ),
            ListTile(
              title: new Text("Consult a Therapist"),
              trailing: new Icon(Icons.medical_services_outlined),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Therapist_Page()),
                );
              },
            ),
            ListTile(
              title: new Text("Logout"),
              trailing: new Icon(Icons.logout),
              onTap: () {
                AuthController.instance.logOut();
              },
            )
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 15.0),
        children: [
          Column(
            children: [
              Container(
                width: 250,
                height: 70,
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                  image: new AssetImage("assets/text1.png"),
                  fit: BoxFit.fill,
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MusicPlayer()),
                      );
                    },
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: const AssetImage("assets/music1.png"),
                        fit: BoxFit.fill,
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Games(
                                  title: '',
                                )),
                      );
                    },
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: new AssetImage("assets/games1.png"),
                        fit: BoxFit.fill,
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Quotes()),
                      );
                    },
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: new AssetImage("assets/quotes.png"),
                        fit: BoxFit.fill,
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 73,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Meme_Generator()));
                    },
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                        image: new AssetImage("assets/memes.png"),
                        fit: BoxFit.fill,
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Jokes()));
                    },
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                        image: new AssetImage("assets/jokes.png"),
                        fit: BoxFit.fill,
                      )),
                    ),
                  ),
                ],
              ),
            ],
          ),
          // const Divider(
          //   height: 50.0,
          // ),

          Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 400,
                height: 250,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/text2.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Container(
              //   padding: const EdgeInsets.all(20.0),
              //   child:
              //    const Align(
              //    alignment: Alignment.center,
              //    child: Text('Self-care can play a role in maintaining your mental health and help support your treatment and recovery if '
              //       'you have a mental illness. Take time to do things that help you live well and improve both your physical health and mental health.', style: TextStyle(fontSize: 18),),)
              // ),
              Container(
                width: 350,
                height: 80,
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                  image: new AssetImage("assets/text.png"),
                  fit: BoxFit.fill,
                )),
              ),
              SizedBox(
                height: 5,
              ),
              // Row 1
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/hydrate.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: 105,
                    height: 105,
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/sleep.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: 105,
                    height: 105,
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/workout.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 28,
              ),

              // Row 2

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/break.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: 105,
                    height: 105,
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/eat.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: 105,
                    height: 105,
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/move.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 28,
              ),
              // Row 3

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/music.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: 105,
                    height: 105,
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/connect.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: 105,
                    height: 105,
                    padding: new EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/read.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
