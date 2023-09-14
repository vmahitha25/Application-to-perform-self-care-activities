import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../meditation.dart';



class Meditation5 extends StatefulWidget {
  const Meditation5({Key? key}) : super(key: key);

  @override
  State<Meditation5> createState() => _Meditation5State();
}

class _Meditation5State extends State<Meditation5> {
  final videourl = "https://www.youtube.com/watch?v=d77XxkgnMc0";
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
            'Metta Meditation ',
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
              height: 600,
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
                      'Metta Meditation',
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
                      'Metta meditation, also called loving kindness meditation, is the practice of directing well-wishes toward others. Practitioners recite specific words and phrases meant to evoke warm-hearted feelings. This is also commonly found in mindfulness and vipassana meditation.',
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'It’s typically practiced while sitting in a comfortable, relaxed position. After a few deep breaths, you repeat words slowly and steadily. These could include: “May I be happy. May I be well. May I be safe. May I be peaceful and at ease."',
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
