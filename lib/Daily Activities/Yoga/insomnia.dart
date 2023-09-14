import 'package:flutter/material.dart';

import 'yoga.dart';



class Insomnia extends StatefulWidget {
  const Insomnia({ required this.title});
  final String title;

  @override
  State<Insomnia> createState() => _InsomniaState();
}

class _InsomniaState extends State<Insomnia> {
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
                          image:
                              new AssetImage("assets/yoga/extended puppy.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Extended Puppy Pose'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage("assets/yoga/fire log.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Fire log Pose'),
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
                          image: new AssetImage(
                              "assets/yoga/seated forward bend.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Seated Forward Bend Pose'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage("assets/yoga/cow.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Cow Pose'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage("assets/yoga/easy.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Easy Pose'),
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
                          image: new AssetImage(
                              "assets/yoga/standing forward bend.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Standing Forward Bend Pose'),
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
