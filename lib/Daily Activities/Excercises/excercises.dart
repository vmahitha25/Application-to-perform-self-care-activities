import 'package:flutter/material.dart';
import '../dailyactivtities_home.dart';
import 'Videos/excercise1.dart';
import 'Videos/excercise2.dart';
import 'Videos/excercise3.dart';
import 'Videos/excercise4.dart';

void main() {
  runApp(const Excercises());
}

class Excercises extends StatefulWidget {
  const Excercises({Key? key}) : super(key: key);

  @override
  State<Excercises> createState() => _ExcercisesState();
}

class _ExcercisesState extends State<Excercises> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Exercises'),
            backgroundColor: Colors.deepPurpleAccent,
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DailyActivities_Home(title: '',),
                      ),
                );
              },
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 470,
                  padding: new EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Excercise1()),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          const Text(
                            '5 Minute Exercises',
                            style: TextStyle(fontSize: 30.0),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 240,
                            width: 280,
                            decoration: new BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)),
                                image: new DecorationImage(
                                    image:
                                        new AssetImage("assets/images/e1.jpg"),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Exercise improves mental health by reducing anxiety, depression, and negative mood and by improving self-esteem and cognitive function. Exercise has also been found to alleviate symptoms such as low self-esteem and social withdrawal.',
                            style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 490,
                  padding: new EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Excercise2()),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          const Text(
                            '10 Minute Exercises',
                            style: TextStyle(fontSize: 30.0),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 240,
                            width: 280,
                            decoration: new BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)),
                                image: new DecorationImage(
                                    image:
                                        new AssetImage("assets/images/e2.jpg"),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Experts say a 10 minute workout such as brisk walking, jumping rope, stair climbing, high-intensity interval workouts and other quick hits of activity that get the body moving and the heart rate up can bring positive results ranging from reduced blood pressure and anxiety to improved sleep quality and focus.2',
                            style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 470,
                  padding: new EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Excercise3()),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          const Text(
                            '15 Minute Exercises',
                            style: TextStyle(fontSize: 30.0),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 240,
                            width: 280,
                            decoration: new BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)),
                                image: new DecorationImage(
                                    image:
                                        new AssetImage("assets/images/e3.png"),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Short 15 minute-workouts can help circulation, improve your mood, and boost metabolism. My go-to for 15 minute workouts is strength training targeting either the upper or lower body. For such a short workout it is typically best to focus on one area.',
                            style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 470,
                  padding: new EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Excercise4()),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          const Text(
                            '20 Minute Exercises',
                            style: TextStyle(fontSize: 30.0),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 240,
                            width: 280,
                            decoration: new BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)),
                                image: new DecorationImage(
                                    image:
                                        new AssetImage("assets/images/e4.jpg"),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Even 20 minutes of exercise can get us up and get our blood flowing, which helps to promote energy and mental clarity (a.k.a you get your work done faster and more efficiently).',
                            style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
