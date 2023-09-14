import 'package:flutter/material.dart';

import 'yoga.dart';



class StandingPose extends StatefulWidget {
  const StandingPose({ required this.title});
  final String title;

  @override
  State<StandingPose> createState() => _StandingPoseState();
}

class _StandingPoseState extends State<StandingPose> {
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
                          image: new AssetImage(
                              "assets/yoga/extended hand to big toe.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Extended Hand to big toe Pose'),
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
                          image: new AssetImage("assets/yoga/high lunge.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('High Lunge'),
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
                          image: new AssetImage("assets/yoga/low lunge.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Low Lunge'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage(
                              "assets/yoga/revolved triangle.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Revolved Triangle Pose'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage(
                              "assets/yoga/standing half forward bend.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Standing half forward bend Pose'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image:
                              new AssetImage("assets/yoga/upward salute.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Upward salute Pose'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage("assets/yoga/warrior 1.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Warrior 1 Pose'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage("assets/yoga/warrior 2.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Warrior 2 Pose'),
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
