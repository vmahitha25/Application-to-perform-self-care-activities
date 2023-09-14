import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../excercises.dart';



class Excercise3 extends StatefulWidget {
  const Excercise3({Key? key}) : super(key: key);

  @override
  State<Excercise3> createState() => _Excercise3State();
}

class _Excercise3State extends State<Excercise3> {
  final videourl = "https://www.youtube.com/watch?v=VWj8ZxCxrYk";
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videourl);
    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            '15 Minute Exercises ',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.deepPurpleAccent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Excercises()),
              );
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
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '15 Minute Exercises',
                      style: TextStyle(fontSize: 30.0),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,
                      bottomActions: [
                        CurrentPosition(),
                        ProgressBar(
                          isExpanded: true,
                          colors: const ProgressBarColors(
                            playedColor: Colors.deepPurpleAccent,
                            handleColor: Colors.deepPurpleAccent,
                          ),
                        ),
                        FullScreenButton(),
                        const PlaybackSpeedButton()
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Short 15 minute-workouts can help circulation, improve your mood, and boost metabolism. My go-to for 15 minute workouts is strength training targeting either the upper or lower body. For such a short workout it is typically best to focus on one area.',
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
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
