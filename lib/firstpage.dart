import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:major_project/Self-Care_Activities_Home.dart';
import 'package:major_project/Daily%20Activities/dailyactivtities_home.dart';
import 'package:major_project/consult_therapist.dart';
import 'Stress_Test/stress_test.dart';
import 'auth_controller.dart';
import 'chat.dart';
import 'shareyourstory.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.indigo),
    debugShowCheckedModeBanner: false,
  ));
}

class chatApp extends StatefulWidget {
  String email;

  chatApp({Key? key, required this.email}) : super(key: key);

  @override
  _chatAppState createState() => _chatAppState();
}

class _chatAppState extends State<chatApp> {
  final List<String> imageList = [
    "img/img3.jpg",
    "img/img1.jpg",
    "img/img2.png",
    "img/img4.jpg",
    "img/img5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Mental Health App"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
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
        padding: EdgeInsets.only(top: 40.0),
        children: [
          Center(
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
              ),
              items: imageList
                  .map((e) => ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.asset(
                              e,
                              width: 1050.0,
                              height: 350.0,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
          new Divider(
            height: 50.0,
          ),
          Container(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Just remember, you are not alone, in fact, you are in a very commonplace with millions of others. We need to help each other and keep striving to reach our goals.",
                style: TextStyle(
                  fontSize: 17.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            margin: EdgeInsets.only(left: 10.0, right: 5.0),
          ),

// Container1
          Container(
            width: 300,
            height: 300,
            child: Row(
              children: [
                Card(
                  child: Image.asset(
                    "img/info.jpg",
                    width: 170,
                    height: 250,
                  ),
                  margin: EdgeInsets.only(left: 20.0, right: 25.0, top: 20.0),
                ),
                Container(
                  width: 170,
                  height: 300,
                  color: Color.fromARGB(255, 245, 243, 243),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Your mental health is everything – prioritize it. Make the time like your life depends on it, because it does. Know more about Mental Health",
                    style:
                        TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
          ),
// Container 2
          Container(
            width: 50,
            height: 250,
            child: Row(
              children: [
                Container(
                  width: 170,
                  height: 250,
                  color: Color.fromARGB(255, 245, 243, 243),
                  alignment: Alignment.center,
                  child: Text(
                    "Mental health…is not a destination, but a process. It’s about how you drive, not where you’re going. Keep a track of your activities and goals with the help of a goal tracker",
                    style:
                        TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),
                  ),
                  margin: EdgeInsets.only(left: 25.0, right: 20.0, top: 20.0),
                ),
                Card(
                  child: Image.asset(
                    "img/goal.png",
                    width: 150,
                    height: 300,
                  ),
                ),
              ],
            ),
          ),
// Container 3
          Container(
            width: 300,
            height: 300,
            child: Row(
              children: [
                Card(
                  child: Image.asset(
                    "img/activities.png",
                    width: 170,
                    height: 250,
                  ),
                  margin: EdgeInsets.only(left: 20.0, right: 25.0, top: 20.0),
                ),
                Container(
                  width: 170,
                  height: 300,
                  color: Color.fromARGB(255, 245, 243, 243),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Self-care is how you take your power back. Listen to what your mind and body need. Come check some self help activities!",
                    style:
                        TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
          ),
// Container 4
          Container(
            width: 300,
            height: 300,
            child: Row(
              children: [
                Container(
                  width: 170,
                  height: 250,
                  color: Color.fromARGB(255, 245, 243, 243),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "'Positive vibes only' isn't a thing. Humans have a wide range of emotions and that's OK. Track your mood here.",
                    style:
                        TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),
                  ),
                  margin: EdgeInsets.only(left: 25.0, right: 20.0, top: 20.0),
                ),
                Card(
                  child: Image.asset(
                    "img/mood.jpg",
                    width: 150,
                    height: 300,
                  ),
                ),
              ],
            ),
          ),
// Container 5
          Container(
            width: 300,
            height: 300,
            child: Row(
              children: [
                Card(
                  child: Image.asset(
                    "img/story1.jpg",
                    width: 170,
                    height: 250,
                  ),
                  margin: EdgeInsets.only(left: 20.0, right: 25.0, top: 20.0),
                ),
                Container(
                  width: 170,
                  height: 300,
                  color: Color.fromARGB(255, 245, 243, 243),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "You are not your illness. You have an individual story to tell. You have a name, a history, a personality. Staying yourself is part of the battle. Come, Share Your Story with US!",
                    style:
                        TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.deepPurpleAccent,
        icon: const Icon(Icons.chat),
        label: const Text("Hello!"),
        tooltip: "Come chat with me!",
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => chat()));
        },
      ),
    );
  }
}
