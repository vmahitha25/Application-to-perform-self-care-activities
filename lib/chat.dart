// TODO Implement this library.import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'package:major_project/shareyourstory.dart';
import 'Self-Care_Activities_Home.dart';
import 'Daily Activities/dailyactivtities_home.dart';
import 'Messages.dart';
import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'Stress_Test/stress_test.dart';
import 'auth_controller.dart';
import 'consult_therapist.dart';
import 'firstpage.dart';

void main() => runApp(chat());

class chat extends StatelessWidget {
  const chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bot',
      theme:
          ThemeData(primarySwatch: Colors.blue, brightness: Brightness.light),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller = TextEditingController();

  List<Map<String, dynamic>> messages = [];

  @override
  void initState() {
    DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Chatbot"),
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
      body: Container(
        child: Column(
          children: [
            Expanded(child: MessagesScreen(messages: messages)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              color: Color.fromARGB(255, 232, 245, 247),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    controller: _controller,
                    style: TextStyle(color: Colors.black),
                  )),
                  IconButton(
                      onPressed: () {
                        sendMessage(_controller.text);
                        _controller.clear();
                      },
                      icon: Icon(Icons.send))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  sendMessage(String text) async {
    if (text.isEmpty) {
      print('Message is empty');
    } else {
      setState(() {
        addMessage(Message(text: DialogText(text: [text])), true);
      });

      DetectIntentResponse response = await dialogFlowtter.detectIntent(
          queryInput: QueryInput(text: TextInput(text: text)));
      if (response.message == null) return;
      setState(() {
        addMessage(response.message!);
      });
    }
  }

  addMessage(Message message, [bool isUserMessage = false]) {
    messages.add({'message': message, 'isUserMessage': isUserMessage});
  }
}
