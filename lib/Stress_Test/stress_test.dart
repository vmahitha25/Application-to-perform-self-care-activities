import 'package:flutter/material.dart';
import 'package:major_project/Daily%20Activities/dailyactivtities_home.dart';
import 'package:major_project/consult_therapist.dart';
import 'package:major_project/firstpage.dart';
import 'questions.dart';

class Stress_Test extends StatefulWidget {
  const Stress_Test({Key? key}) : super(key: key);

  @override
  State<Stress_Test> createState() => _Stress_TestState();
}

class _Stress_TestState extends State<Stress_Test> {
  var score = 0;
  var n = 1;
  List que_list = [
    Questions("0", false),
    Questions("Do you frequently bring work home at night?", true),
    Questions(
        "Do you feel like you do not have enough hours in the day to do all the things that you must do?",
        true),
    Questions(
        "Do you do the jobs yourself to ensure it is done properly?", true),
    Questions(
        "Do you feel like there are too many deadlines in your work / life that are difficult to meet?",
        true),
    Questions(
        "Do you underestimate how long it takes for you to do things?", true),
    Questions(
        "Do you feel like your self confidence / self esteem is lower than you would like it to be?",
        true),
    Questions(
        "Do you frequently feel guilty if you relax and do nothing?", true),
    Questions(
        "Do you find yourself thinking about problems even when you are supposed to be relaxing?",
        true),
    Questions(
        "Do you feel fatigued or tired even when you wake up after an adequate sleep?",
        true),
    Questions(
        "Do you often nod or finish other peoples sentences for them when they speak slowly?",
        true),
    Questions(
        "Do you have a tendency to eat, talk, walk and drive quickly?", true),
    Questions(
        "Has your appetite changed in the sense that you either have a desire to binge or have a loss of appetite / may skip meals?",
        true),
    Questions(
        "Do you feel irritated or angry if the car or traffic in front seems to be going too slowly/ Do you become very frustrated at having to wait in a queue?",
        true),
    Questions(
        "If something or someone really annoys you, do you bottle up your feelings?",
        true),
    Questions(
        "When you play a sport or any game, Do you really try to win whoever you play?",
        true),
    Questions(
        "Do you experience mood swings, difficulty making decisions, concentration and memory impairment?",
        true),
    Questions(
        "Do you find fault and criticize others rather than praising, even if it is deserved?",
        true),
    Questions(
        "Do you pretend to be listening even though you are preoccupied with your own thoughts?",
        true),
    Questions(
        "Is your sex drive is lower? Or do you experience changes in your menstrual cycle?",
        true),
    Questions("Do you find yourself grinding your teeth?", true),
    Questions(
        "Is there an Increase in muscular aches and pains especially in the neck, head, lower back, shoulders?",
        true),
    Questions(
        "Are you unable to perform tasks as well as you used to? Is your judgment clouded or not as good as it was?",
        true),
    Questions(
        "Do you find that you have a greater dependency on alcohol, caffeine, nicotine or drugs?",
        true),
    Questions(
        "Do you find that you don’t have time for many interests / hobbies outside of work?",
        true),
    Questions(
        "Do you deny or ignore problems in the hope that they will go away?",
        true),
  ];

  void checkAnswer(bool choice) {
    if (choice == que_list[n].ans) {
      score = score + 1;
    }
    setState(() {
      if (n < que_list.length - 1) {
        n = n + 1;
      } else {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: Colors.white,
                content: Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Result',
                        style: TextStyle(color: Colors.white, fontSize: 22.0),
                      ),
                      const SizedBox(height: 10.0),
                      CircleAvatar(
                        child: Text(
                          '$score/25',
                          style: const TextStyle(
                              fontSize: 30.0, color: Colors.white),
                        ),
                        radius: 70.0,
                        backgroundColor: score <= 4
                            ? Colors
                                .green // when the result is half of the questions
                            : score >= 5 && score <= 13
                                ? Colors
                                    .yellow // when the result is less than half
                                : Colors
                                    .red, // when the result is more than half
                      ),
                      const SizedBox(height: 25.0),
                      Text(
                        score <= 4
                            ? 'You are least likely to suffer from stress-related illness!'
                            : score > 5 && score <= 13
                                ? 'You are more likely to experience stress related ill health either mental, physical or both. \n\nYou would benefit from stress management / counseling or advice to help in the identified areas.'
                                : 'You are most likely to experience stress & stress-related illness.  \n\nIt is important to seek professional help or stress management counseling. Consult your medical practitioner.',
                        style: const TextStyle(color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10.0),
                      Builder(builder: (context) {
                        return Column(
                          children: [
                            if (score <= 4) ...[
                              ElevatedButton(
                                child: Text(
                                  "Browse the Rest of the App!",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                                style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.fromLTRB(
                                        12, 8, 12, 8),
                                    backgroundColor: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0))),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              chatApp(email: 'email')));
                                },
                              ),
                            ] else if (score >= 5 && score <= 13) ...[
                              ElevatedButton(
                                child: Text(
                                  "Perform some Activities to feel better!",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                                style: ElevatedButton.styleFrom(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                    backgroundColor: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0))),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DailyActivities_Home(title: '')));
                                },
                              ),
                            ] else ...[
                              ElevatedButton(
                                child: Text(
                                  "We recommend you Consult A Therapist",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                                style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.fromLTRB(
                                        12, 8, 12, 8),
                                    backgroundColor: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0))),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Therapist_Page()));
                                },
                              ),
                            ]
                          ],
                        );
                      }),
                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DailyActivities_Home(title: 'title')),
                          );
                        },
                        child: ElevatedButton(
                          child: Text(
                            "Exit to Home",
                            style: TextStyle(color: Colors.white, fontSize: 13),
                            textAlign: TextAlign.center,
                          ),
                          style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        chatApp(email: 'email')));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      }
    });
  }

  void reset() {
    setState(() {
      n = 1;
      score = 0;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Stress Test'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => chatApp(email: '')),
            );
          },
        ),
      ),
      body: Builder(builder: (context) {
        return Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 130,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        'Question: $n/25',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.deepPurpleAccent)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          que_list[n].que,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 23.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      child: Text(
                        "Yes",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      onPressed: () => checkAnswer(true),
                    ),
                    ElevatedButton(
                      child: Text(
                        "No",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      onPressed: () => checkAnswer(false),
                    )
                  ],
                )
              ],
            ));
      }),
    );
  }
}
