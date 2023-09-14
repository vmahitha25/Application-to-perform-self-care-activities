import 'package:flutter/material.dart';
import '../../Self-Care_Activities_Home.dart';
import '../../Stress_Test/stress_test.dart';
import '../../auth_controller.dart';
import '../../consult_therapist.dart';
import '../../firstpage.dart';
import '../../shareyourstory.dart';
import '../dailyactivtities_home.dart';
import 'Videos/med1.dart';
import 'Videos/med2.dart';
import 'Videos/med3.dart';
import 'Videos/med4.dart';
import 'Videos/med5.dart';
import 'Videos/med6.dart';


class Meditation extends StatefulWidget {
  const Meditation({Key? key}) : super(key: key);

  @override
  State<Meditation> createState() => _MeditationState();
}

class _MeditationState extends State<Meditation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DailyActivities_Home(title: 'title'),
                      ),
                );
              },
            ),
            title: Text('Meditation'),
            backgroundColor: Colors.deepPurpleAccent,
            centerTitle: true,
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
                        MaterialPageRoute(builder: (context) => Meditation1()),
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
                            'Mindfulness Meditation',
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
                                    image: new AssetImage(
                                        "assets/images/med1.jpg"),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Mindfulness meditation is the process of being fully present with your awareness. Being mindful means being aware of where we are and what we’re doing, and not being overly reactive to what’s going on around us.',
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
                        MaterialPageRoute(builder: (context) => Meditation2()),
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
                            'Transcendental Meditation',
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
                                    image: new AssetImage(
                                        "assets/images/med2.jpg"),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Transcendental meditation may sound lofty, but it’s actually a basic technique: You choose a mantra — a word, a phrase, or a sound — and repeat it for 20 minutes twice a day. It’s best to do this seated, with your eyes closed..',
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
                        MaterialPageRoute(builder: (context) => Meditation3()),
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
                            'Guided Meditation',
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
                                    image: new AssetImage(
                                        "assets/images/med3.jpg"),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Guided meditation, which is sometimes also called guided imagery or visualization, is a method of meditation in which you form mental pictures or situations that you find relaxing.',
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
                        MaterialPageRoute(builder: (context) => Meditation4()),
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
                            'Vipassana Meditation',
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
                                    image: new AssetImage(
                                        "assets/images/med4.png"),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Vipassana meditation aims for self-transformation through self-observation. By focusing your attention on physical sensations in the body, you establish a deep connection between mind and body. ',
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
                        MaterialPageRoute(builder: (context) => Meditation5()),
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
                            'Metta Meditation',
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
                                    image: new AssetImage(
                                        "assets/images/med5.jpg"),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Metta meditation, also called loving kindness meditation, is the practice of directing well-wishes toward others. Practitioners recite specific words and phrases meant to evoke warm-hearted feelings. ',
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
                  height: 500,
                  padding: new EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Meditation6()),
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
                            'Chakra Meditation',
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
                                    image: new AssetImage(
                                        "assets/images/med6.jpg"),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Chakra is an ancient Sanskrit word that translates to “wheel,” and can be traced back to India. Chakras refer to the centers of energy and spiritual power in the body. There are thought to be seven chakras. Each chakra is located at a different part of the body along the spine, and each has a corresponding color.',
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
