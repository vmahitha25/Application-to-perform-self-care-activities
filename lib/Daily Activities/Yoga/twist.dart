import 'package:flutter/material.dart';

import 'yoga.dart';

class TwistPose extends StatefulWidget {
  const TwistPose({ required this.title});
  final String title;

  @override
  State<TwistPose> createState() => _TwistPoseState();
}

class _TwistPoseState extends State<TwistPose> {
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
                              "assets/yoga/Half Lord of the Fishes.jpg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Half Lord of the Fishes Pose'),
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
                  Text('Bharadvajas twist'),
                  SizedBox(height: 20),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage(
                              "assets/yoga/revolved side angle.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Revolved side angle Pose'),
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
                  Text('Revolved triangle Pose'),
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
