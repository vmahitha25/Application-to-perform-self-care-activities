import 'package:flutter/material.dart';
import 'package:major_project/Daily%20Activities/Excercises/excercises.dart';
import 'package:major_project/Daily%20Activities/stretching.dart';
import '../Self-Care_Activities_Home.dart';
import '../Stress_Test/stress_test.dart';
import '../auth_controller.dart';
import '../consult_therapist.dart';
import '../firstpage.dart';
import '../shareyourstory.dart';
import 'Book/main.dart';
import 'Meditation/Music/MusicPlayer.dart';
import 'Meditation/meditation.dart';
import 'Recipe/recipe.dart';
import 'Yoga/yoga.dart';
import 'cycle.dart';

class DailyActivities_Home extends StatelessWidget {
  const DailyActivities_Home({required String title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Activities',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GoalActivity(title: 'Daily Activities'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GoalActivity extends StatefulWidget {
  const GoalActivity({required this.title});

  final String title;

  @override
  State<GoalActivity> createState() => _GoalActivityState();
}

class _GoalActivityState extends State<GoalActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
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

      body: Builder(builder: (context) {
        return Container(
          child: SingleChildScrollView(
              child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                height: 45,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                  child: Container(
                    height: 160,
                    width: 170,
                    decoration: new BoxDecoration(
                        image: new DecorationImage(
                      image: new AssetImage("assets/images/med.png"),
                      fit: BoxFit.fill,
                    )),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Meditation()),
                    );
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  child: Container(
                    height: 160,
                    width: 170,
                    decoration: new BoxDecoration(
                        image: new DecorationImage(
                      image: new AssetImage("assets/images/book.png"),
                      fit: BoxFit.fill,
                    )),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Book()),
                    );
                  },
                ),
              ]),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 200,
                      width: 210,
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                        image: new AssetImage("assets/images/yoga.png"),
                        fit: BoxFit.fill,
                      )),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const YogaPose(title: 'Yoga Poses')),
                      );
                    },
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      GestureDetector(
                    child: Container(
                      height: 95,
                      width: 130,
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                        image: new AssetImage("assets/images/songs.png"),
                        fit: BoxFit.fill,
                      )),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MusicPlayer_New()),
                      );
                    }),
                      SizedBox(
                        height: 10,
                      ),
                    GestureDetector(
                    child: Container(
                      height: 95,
                      width: 130,
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                        image: new AssetImage("assets/images/journal.png"),
                        fit: BoxFit.fill,
                      )),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Journal()),
                      );
                    }),
                 ]),
              ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              GestureDetector(
                        child: Container(
                          height: 120,
                          width: 210,
                          decoration: new BoxDecoration(
                              image: new DecorationImage(
                            image: new AssetImage("assets/images/cook1.png"),
                            fit: BoxFit.fill,
                          )),
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Recipe(title: 'Recipe')),
                          );
                        },
                      ),                
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                    child: Container(
                      height: 120,
                      width: 130,
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                        image: new AssetImage("assets/images/cycle.png"),
                        fit: BoxFit.fill,
                      )),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Cycling(
                                title: 'Cycle for Better Health')),
                      );
                    }),
              ]),
              SizedBox(
                height: 18,
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              GestureDetector(
                        child: Container(
                          height: 120,
                          width: 170,
                          decoration: new BoxDecoration(
                              image: new DecorationImage(
                            image: new AssetImage("assets/images/exercise.png"),
                            fit: BoxFit.fill,
                          )),
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Excercises()),
                          );
                        },
                      ),
                      SizedBox(width:15,),
                      GestureDetector(
                        child: Container(
                          height: 120,
                          width: 170,
                          decoration: new BoxDecoration(
                              image: new DecorationImage(
                            image: new AssetImage("assets/images/stretch.png"),
                            fit: BoxFit.fill,
                          )),
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Stretching(
                                      title: '',
                                    )),
                          );
                        },
                      ),
                    ],
                  ),
              SizedBox(
                height: 50,
              )
            ]),
          )),
        );
      }),
    );
  }
}
