import 'package:flutter/material.dart';
import 'package:major_project/Daily%20Activities/dailyactivtities_home.dart';

class Cycling extends StatefulWidget {
  const Cycling({required this.title});

  final String title;

  @override
  State<Cycling> createState() => _CyclingState();
}

class _CyclingState extends State<Cycling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(widget.title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DailyActivities_Home(title: 'title')),
            );
          },
        ),
      ),
      body: Center(
        child: Container(
          // height: 450,
          width: 750,
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 250,
                  width: 300,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18.0)),
                      image: DecorationImage(
                        image: AssetImage("assets/cycling/3.jpg"),
                        fit: BoxFit.fill,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 17,
                      ),
                      Flexible(
                        child: Text(
                          'Cycling boosts mental health and brain power',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                          overflow: TextOverflow.visible,
                        ),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Container(
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 17,
                      ),
                      Flexible(
                        child: Text(
                          'Cycling can ease feelings of stress, depression, or anxiety. Focusing on the road or your cadence when cycling can help you develop concentration and awareness of the present moment. This may help take your focus away from the mental chatter of your day.',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w200),
                          overflow: TextOverflow.visible,
                        ),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Container(
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 17,
                      ),
                      Flexible(
                        child: Text(
                          '',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                          overflow: TextOverflow.visible,
                        ),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                    ],
                  ),
                ),
                // const SizedBox(
                //   height: 14,
                // ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 17,
                      ),
                      Container(
                        height: 200,
                        width: 300,
                        decoration: new BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(0.0)),
                            image: new DecorationImage(
                              image: new AssetImage("assets/cycling/1.jpg"),
                              fit: BoxFit.fill,
                            )),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
