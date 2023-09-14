import 'package:flutter/material.dart';
import 'package:major_project/Daily%20Activities/dailyactivtities_home.dart';
import 'anxiety.dart';
import 'bending.dart';
import 'standing.dart';
import 'insomnia.dart';
import 'twist.dart';
import 'digestion.dart';


class YogaPose extends StatefulWidget {
  const YogaPose({ required this.title});
  final String title;

  @override
  State<YogaPose> createState() => _YogaPoseState();
}

class _YogaPoseState extends State<YogaPose> {
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
                  builder: (context) => DailyActivities_Home(
                        title: 'Activities',
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
                children: [
                  SizedBox(height: 45),
                  Text(
                    'YOGA POSES',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 17),
                      Flexible(
                        child: Text(
                          'Browse our extensive yoga pose library, with a vast collection of basic poses, seated and standing poses and twists.',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w200),
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Poses by Style',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Container(
                                height: 180,
                                width: 200,
                                decoration: new BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(0.0)),
                                    image: new DecorationImage(
                                      image: new AssetImage(
                                          "assets/yoga/warrior 2.jpg"),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const StandingPose(
                                          title: 'Standing Yoga Poses')),
                                );
                              },
                            ),
                            SizedBox(height: 10),
                            Text('Standing Yoga Poses'),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Container(
                                height: 180,
                                width: 200,
                                decoration: new BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(0.0)),
                                    image: new DecorationImage(
                                      image: new AssetImage(
                                          "assets/yoga/Half Lord of the Fishes.jpg"),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const TwistPose(
                                          title: 'Twist Yoga Poses')),
                                );
                              },
                            ),
                            SizedBox(height: 10),
                            Text('Twist Yoga Poses'),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Container(
                                height: 180,
                                width: 200,
                                decoration: new BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(0.0)),
                                    image: new DecorationImage(
                                      image: new AssetImage(
                                          "assets/yoga/head to knee.jpg"),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const BendingPose(
                                          title: 'Forward Bending Poses')),
                                );
                              },
                            ),
                            SizedBox(height: 10),
                            Text('Forward Bending Yoga Poses'),
                          ],
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Poses by Benefit',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Container(
                                height: 180,
                                width: 200,
                                decoration: new BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(0.0)),
                                    image: new DecorationImage(
                                      image:
                                          new AssetImage("assets/yoga/bow.jpg"),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Anxiety(
                                          title: 'Poses for Anxiety')),
                                );
                              },
                            ),
                            SizedBox(height: 10),
                            Text('Yoga for Anxiety'),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Container(
                                height: 180,
                                width: 200,
                                decoration: new BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(0.0)),
                                    image: new DecorationImage(
                                      image: new AssetImage(
                                          "assets/yoga/extended puppy.jpg"),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Insomnia(
                                          title: 'Poses for Insomnia')),
                                );
                              },
                            ),
                            SizedBox(height: 10),
                            Text('Yoga for Insomnia'),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Container(
                                height: 180,
                                width: 200,
                                decoration: new BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(0.0)),
                                    image: new DecorationImage(
                                      image: new AssetImage(
                                          "assets/yoga/Bharadvaja.jpeg"),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Digestion(
                                          title: 'Poses for Digestion')),
                                );
                              },
                            ),
                            SizedBox(height: 10),
                            Text('Yoga for Digestion'),
                          ],
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                  ),
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
