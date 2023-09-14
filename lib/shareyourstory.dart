import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import '/NewPost.dart';
import 'Self-Care_Activities_Home.dart';
import 'Daily Activities/dailyactivtities_home.dart';
import 'Stress_Test/stress_test.dart';
import 'auth_controller.dart';
import 'consult_therapist.dart';
import 'firstpage.dart';

class Journal extends StatefulWidget {
  const Journal({Key? key}) : super(key: key);

  @override
  State<Journal> createState() {
    return _JournalState();
  }
}

class _JournalState extends State<Journal> {
  final dbref = FirebaseDatabase.instance.ref().child('Posts');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9fafc),
      appBar: AppBar(
        title: const Text("Share your Journey"),
        backgroundColor: Colors.deepPurpleAccent,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: FirebaseAnimatedList(
              query: dbref.child('Post List'),
              itemBuilder: (BuildContext context, DataSnapshot snapshot,
                  Animation<double> animation, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: FadeInImage.assetNetwork(
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width * 1,
                              height: MediaQuery.of(context).size.height * .25,
                              placeholder: 'img/background.png',
                              image: snapshot.child('pImage').value.toString()),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Written by ' +
                                  snapshot.child('uEmail').value.toString(),
                              style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic),
                            )),
                        SizedBox(
                          height: 7,
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                                snapshot.child('pTitle').value.toString(),
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                                snapshot.child('pDescription').value.toString(),
                                style: const TextStyle(fontSize: 20))),
                      ],
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.deepPurpleAccent,
        icon: const Icon(Icons.add),
        label: const Text("Share your Story!"),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NewPost()));
        },
      ),
    );
  }
}
