import 'package:flutter/material.dart';
import 'package:major_project/Daily%20Activities/dailyactivtities_home.dart';


class Stretching extends StatefulWidget {
  const Stretching({ required this.title});
  final String title;

  @override
  State<Stretching> createState() => _StretchingState();
}

class _StretchingState extends State<Stretching> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Stretching Exercises'),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 28),
                  Text(
                    'STRETCHING EXERCISES',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 25),
                  // Flexible(
                  //     child: Text(
                  //         'Stretching may not be the most exciting part of working out, but doing flexibility work is super important in a well-rounded fitness routine. Incorporate some stretching exercises into your workout schedule.')),
                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage(
                              "assets/stretching/standing hamstring.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Standing Hamstring Stretch'),
                  SizedBox(height: 10),
                  Text(
                    'Stretches neck, back, glutes, hamstrings, calves',
                  ),
                  SizedBox(height: 20),

                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage(
                              "assets/stretching/piriformis.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Piriformis Stretch'),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 17),
                      Flexible(
                        child: Text(
                          'The piriformis muscle is a deep internal hip rotator, located on the outside of the butt.',
                          overflow: TextOverflow.visible,
                        ),
                      ),
                      SizedBox(width: 17),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 17),
                      Flexible(
                        child: Text(
                          'Stretching this muscle can prevent potential future sciatica, or help treat it. Stretches hips, back, glutes',
                          overflow: TextOverflow.visible,
                        ),
                      ),
                      SizedBox(width: 17),
                    ],
                  ),

                  SizedBox(height: 20),

                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage(
                              "assets/stretching/lunge twist.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Lunge With Spinal Twist'),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 17,
                      ),
                      Flexible(
                        child: Text(
                          'It is essential to help with posture-related pain or for people who sit for prolonged periods of time',
                          overflow: TextOverflow.visible,
                        ),
                      ),
                      SizedBox(width: 17),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Stretches hip flexors, quads, back',
                  ),
                  SizedBox(height: 20),

                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage(
                              "assets/stretching/butterfly.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Butterfly Stretch'),
                  SizedBox(height: 10),
                  Text(
                    'Stretches hips, glutes, back, thighs',
                  ),
                  SizedBox(height: 20),

                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage(
                              "assets/stretching/side bend.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Side Bend Stretch'),
                  SizedBox(height: 10),
                  Text(
                    'Stretches groin, hips, inner thigh, obliques',
                  ),
                  SizedBox(height: 20),

                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage(
                              "assets/stretching/knee to chest.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Knee to Chest Stretch'),
                  SizedBox(height: 10),
                  Text(
                    'Stretches lower back, hips, hamstrings',
                  ),
                  SizedBox(height: 20),

                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage(
                              "assets/stretching/lying quad.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Lying Quad Stretch'),
                  SizedBox(height: 10),
                  Text(
                    'Stretches quads',
                  ),
                  SizedBox(height: 20),

                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image:
                              new AssetImage("assets/stretching/sphinx.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Sphinx Pose'),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 17,
                      ),
                      Flexible(
                        child: Text(
                          'This pose stretches the lower back in a gentle way, plus it engages your abs, which further supports the lower back.',
                          overflow: TextOverflow.visible,
                        ),
                      ),
                      SizedBox(width: 17),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Stretches lower back, chest, shoulders',
                  ),
                  SizedBox(height: 20),

                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage(
                              "assets/stretching/extended puppy.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Extended Puppy Pose'),
                  SizedBox(height: 10),
                  Text(
                    'Stretches back, shoulders, glutes',
                  ),
                  SizedBox(height: 20),

                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image:
                              new AssetImage("assets/stretching/pretzel.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Pretzel Stretch'),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 17),
                      Flexible(
                        child: Text(
                          'It stretches multiple important postural muscles in one stretch.',
                          overflow: TextOverflow.visible,
                        ),
                      ),
                      SizedBox(width: 17),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Stretches quads, glutes, obliques, hips, back',
                  ),

                  SizedBox(height: 20),

                  Container(
                    height: 240,
                    width: 280,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        image: new DecorationImage(
                          image: new AssetImage(
                              "assets/stretching/standing quad.jpeg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text('Standing Quad Stretch'),
                  SizedBox(height: 10),
                  Text(
                    'Stretches quads',
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
