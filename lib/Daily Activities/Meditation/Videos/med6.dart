import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../meditation.dart';



class Meditation6 extends StatefulWidget {
  const Meditation6({Key? key}) : super(key: key);

  @override
  State<Meditation6> createState() => _Meditation6State();
}

class _Meditation6State extends State<Meditation6> {
  final videourl = "https://www.youtube.com/watch?v=I6jP5oLdKpY";
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
            'Chakra Meditation ',
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
              height: 20,
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
                      'Chakra Meditation',
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
                      'Chakra is an ancient Sanskrit word that translates to “wheel,” and can be traced back to India. Chakras refer to the centers of energy and spiritual power in the body. There are thought to be seven chakras. Each chakra is located at a different part of the body along the spine, and each has a corresponding color.',
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Chakra meditation is made up of relaxation techniques focused on bringing balance and well-being to the chakras. Some of these techniques include visually picturing each chakra in the body and its corresponding color. ',
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
