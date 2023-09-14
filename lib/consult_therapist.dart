import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:major_project/shareyourstory.dart';
import 'Self-Care_Activities_Home.dart';
import 'Daily Activities/dailyactivtities_home.dart';
import 'Stress_Test/stress_test.dart';
import 'auth_controller.dart';
import 'firstpage.dart';

class Therapist_Page extends StatefulWidget {
  const Therapist_Page({Key? key});

  @override
  State<Therapist_Page> createState() => _Therapist_PageState();
}

class _Therapist_PageState extends State<Therapist_Page> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: const Text("Consult a Therapist"),
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
        body: Column(
          children: [
            Text('\n'),
            buildButton(),
            buildButton2(),
            buildButton3(),
            buildButton4(),
            buildButton5(),
            buildButton6(),
          ],
        ),
      );
}

Widget buildButton() {
  final number = '+91 9723322241';
  return Card(
    child: ClipPath(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(color: Colors.deepPurpleAccent, width: 5),
          ),
        ),
        child: ListTile(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. Jignesh Ahir',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  'M.Phil Psychology',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              Text(
                'Vashi, Navi Mumbai',
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              number,
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          trailing: TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.blue),
              ),
            ),
            child: const Text('Call'),
            onPressed: () async {
              await FlutterPhoneDirectCaller.callNumber(number);
            },
          ),
        ),
      ),
    ),
  );
}

Widget buildButton2() {
  final number = '022 2202 4848';
  return Card(
    child: ClipPath(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(color: Colors.deepPurpleAccent, width: 5),
          ),
        ),
        child: ListTile(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Aaisha Khan',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  'MA - Psychology',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              Text(
                'Thane',
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              number,
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          trailing: TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.blue),
              ),
            ),
            child: const Text('Call'),
            onPressed: () async {
              await FlutterPhoneDirectCaller.callNumber(number);
            },
          ),
        ),
      ),
    ),
  );
}

Widget buildButton3() {
  final number = '+91 91363 47247';
  return Card(
    child: ClipPath(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(color: Colors.deepPurpleAccent, width: 5),
          ),
        ),
        child: ListTile(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. Neha',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  'M.Phil Psychology',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              Text(
                'Nerul, Navi Mumbai',
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              number,
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          trailing: TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.blue),
              ),
            ),
            child: const Text('Call'),
            onPressed: () async {
              await FlutterPhoneDirectCaller.callNumber(number);
            },
          ),
        ),
      ),
    ),
  );
}

Widget buildButton4() {
  final number = '+91 99304 49898';
  return Card(
    child: ClipPath(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(color: Colors.deepPurpleAccent, width: 5),
          ),
        ),
        child: ListTile(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. Priyanka Singh',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  'M.Phil Psychology',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              Text(
                'Seawoods, Navi Mumbai',
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              number,
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          trailing: TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.blue),
              ),
            ),
            child: const Text('Call'),
            onPressed: () async {
              await FlutterPhoneDirectCaller.callNumber(number);
            },
          ),
        ),
      ),
    ),
  );
}

Widget buildButton5() {
  final number = '+91 99200 91822';
  return Card(
    child: ClipPath(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(color: Colors.deepPurpleAccent, width: 5),
          ),
        ),
        child: ListTile(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. Anamikaa Mishra',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  'Counseling Psychologist & Psychotherapy',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              Text(
                'Kharghar, Navi Mumbai',
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              number,
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          trailing: TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.blue),
              ),
            ),
            child: const Text('Call'),
            onPressed: () async {
              await FlutterPhoneDirectCaller.callNumber(number);
            },
          ),
        ),
      ),
    ),
  );
}

Widget buildButton6() {
  final number = '+91 9820540099';
  return Card(
    child: ClipPath(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(color: Colors.deepPurpleAccent, width: 5),
          ),
        ),
        child: ListTile(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. Aruna Rathod',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  'M.Phil Psychology',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              Text(
                'Nerul, Navi Mumbai',
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              number,
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          trailing: TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.blue),
              ),
            ),
            child: const Text('Call'),
            onPressed: () async {
              await FlutterPhoneDirectCaller.callNumber(number);
            },
          ),
        ),
      ),
    ),
  );
}
