import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../meditation.dart';



class Meditation4 extends StatefulWidget {
  const Meditation4({Key? key}) : super(key: key);

  @override
  State<Meditation4> createState() => _Meditation4State();
}

class _Meditation4State extends State<Meditation4> {
  final videourl = "https://www.youtube.com/watch?v=Z7oYJZg9nOA";
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
            'Vipassana Meditation ',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.deepPurpleAccent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Meditation()),
              );
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
                      'Vipassana Meditation',
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
                      height: 20,
                    ),
                    Text(
                      'An ancient Indian form of meditation, vipassana means to see things as they really are. ',
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Vipassana meditation aims for self-transformation through self-observation. By focusing your attention on physical sensations in the body, you establish a deep connection between mind and body. This interconnectedness, teachers of the practice say, helps balance your mind and promotes love and compassion.',
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
