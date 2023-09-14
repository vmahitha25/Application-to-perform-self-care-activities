import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../excercises.dart';

void main() {
  runApp(const Excercise1());
}

class Excercise1 extends StatefulWidget {
  const Excercise1({Key? key}) : super(key: key);

  @override
  State<Excercise1> createState() => _Excercise1State();
}

class _Excercise1State extends State<Excercise1> {

  final videourl = "https://www.youtube.com/watch?v=fLLScgWQcHc";
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
          title: const Text('5 Minute Exercises', textAlign: TextAlign.center,),
          backgroundColor: Colors.deepPurpleAccent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Excercises()),);
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              width: double.infinity,
              height: 470,
              padding: new EdgeInsets.all(10.0),
              child: Card(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:  [
                    SizedBox(
                      height: 10,
                    ),
                    const Text('5 Minute Exercises', style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,),
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
                    Text('Exercise improves mental health by reducing anxiety, depression, and negative mood and by improving self-esteem and cognitive function. Exercise has also been found to alleviate symptoms such as low self-esteem and social withdrawal.'
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
