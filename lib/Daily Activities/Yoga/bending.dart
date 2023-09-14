import 'package:flutter/material.dart';
import 'package:major_project/Daily%20Activities/Yoga/yoga.dart';


class BendingPose extends StatefulWidget {
  const BendingPose({ required this.title});
  final String title;

  @override
  State<BendingPose> createState() => _BendingPoseState();
}

class _BendingPoseState extends State<BendingPose> {
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
                          image: new AssetImage("assets/yoga/bound angle.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Bound Angle Pose'),
                  SizedBox(height: 20),
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
                          image:
                              new AssetImage("assets/yoga/head to knee .jpeg"),
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
                              "assets/yoga/seated forward bend.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Seated Forward Bend Pose'),
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
