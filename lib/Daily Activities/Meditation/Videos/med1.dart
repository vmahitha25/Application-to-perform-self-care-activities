import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../meditation.dart';

void main() {
  runApp(const Meditation1());
}

class Meditation1 extends StatefulWidget {
  const Meditation1({Key? key}) : super(key: key);

  @override
  State<Meditation1> createState() => _Meditation1State();
}

class _Meditation1State extends State<Meditation1> {

  final videourl = "https://www.youtube.com/watch?v=ssss7V1_eyA&t=15s";
  late YoutubePlayerController  _controller;
  @override
  void initState(){
    final videoID = YoutubePlayer.convertUrlToId(videourl);
    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        )
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:  AppBar(
          centerTitle: true,
          title: const Text('Mindfulness Meditation', textAlign: TextAlign.center,),
          backgroundColor: Colors.deepPurpleAccent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Meditation()),);
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 550,
              padding: new EdgeInsets.all(10.0),
              child: Card(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:  [
                    SizedBox(
                      height: 10,
                    ),
                    const Text('Mindfulness Meditation', style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,),
                    SizedBox(
                      height: 20,
                    ),
                    YoutubePlayer(controller: _controller,
                      showVideoProgressIndicator: true,
                      bottomActions: [

                        CurrentPosition(),
                        ProgressBar(
                          isExpanded: true,
                          colors:  const ProgressBarColors(
                            playedColor:  Colors.deepPurpleAccent,
                            handleColor: Colors.deepPurpleAccent,
                          ),
                        ),
                        FullScreenButton(),
                        const PlaybackSpeedButton()
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Mindfulness meditation is the process of being fully present with your awareness. Being mindful means being aware of where we are and what we’re doing, and not being overly reactive to what’s going on around us.'
                      ,style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.center,),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Mindful meditation can be done anywhere. Some people prefer to sit in a quiet place, close their eyes, and focus on their breathing. But you can choose to be mindful at any point of the day, including while you’re commuting to work or doing chores.'
                      ,style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.center,),



                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
