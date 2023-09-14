import 'package:flutter/material.dart';

import 'yoga.dart';


class Digestion extends StatefulWidget {
  const Digestion({ required this.title});
  final String title;

  @override
  State<Digestion> createState() => _DigestionState();
}

class _DigestionState extends State<Digestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(widget.title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => YogaPose(
                        title: 'Yoga Poses',
                      )),
            );
          },
        ),
      ),
      body: Builder(builder: (context) {
        return Center(
          child: Container(
            width: 1150,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 45),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage("assets/yoga/boat.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Boat Pose'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage(
                              "assets/yoga/extended side angle.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Extended side angle Pose'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage(
                              "assets/yoga/extended triangle.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Extended triangle Pose'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage("assets/yoga/hero.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Hero Pose'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage("assets/yoga/Bharadvaja.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Bharadvaja Twist'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image:
                              new AssetImage("assets/yoga/Big toe pose.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Big Toe Pose'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage("assets/yoga/bow.jpg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Bow Pose'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage("assets/yoga/bridge.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Bridge Pose'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage("assets/yoga/cobra.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Cobra Pose'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage(
                              "assets/yoga/downward facing dog pose.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Downward Facing Dog Pose'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage("assets/yoga/legs up.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Legs up the wall Pose'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image:
                              new AssetImage("assets/yoga/head to knee.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Head to Knee Pose'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage("assets/yoga/locust.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Locust Pose'),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
