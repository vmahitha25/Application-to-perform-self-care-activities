import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:major_project/Self-Care_Activities_Home.dart';
import '../../dailyactivtities_home.dart';
import 'Music.dart';
import 'package:flutter_svg/svg.dart';
import 'DetailPage.dart';
import 'custom_list_view.dart';

//1.create class and design

class MusicPlayer_New extends StatefulWidget {
  @override
  _MusicPlayer_NewState createState() => _MusicPlayer_NewState();
}

class _MusicPlayer_NewState extends State<MusicPlayer_New> {
  //3.Add list of songs

  late List music;

  @override
  void initState() {
    music = getList();
    super.initState();
  }

  List getList() {
    return [
      Music(
          title: "Audio 1",
          url:
              "https://pagalfree.com/musics/128-Roohedaariyaan%20-%20B%20Praak%20128%20Kbps.mp3",
          image:
              "https://t3.ftcdn.net/jpg/04/54/66/12/360_F_454661277_NtQYM8oJq2wOzY1X9Y81FlFa06DVipVD.jpg"),
      Music(
        title: "Audio 2",
        url:
            "https://pagalfree.com/musics/128-Jhaanjar%20-%20B%20Praak%20128%20Kbps.mp3",
        image:
            "https://t3.ftcdn.net/jpg/04/54/66/12/360_F_454661277_NtQYM8oJq2wOzY1X9Y81FlFa06DVipVD.jpg",
      ),
      Music(
        title: "Audio 3",
        url:
            "https://pagalfree.com/musics/128-Yaara%20-%20Vikram%20Vedha%20128%20Kbps.mp3",
        image:
            "https://t3.ftcdn.net/jpg/04/54/66/12/360_F_454661277_NtQYM8oJq2wOzY1X9Y81FlFa06DVipVD.jpg",
      ),
      Music(
          title: "Audio 4",
          url:
              "https://pagalfree.com/musics/128-Manike%20-%20Thank%20God%20128%20Kbps.mp3",
          image:
              "https://t3.ftcdn.net/jpg/04/54/66/12/360_F_454661277_NtQYM8oJq2wOzY1X9Y81FlFa06DVipVD.jpg"),
      Music(
          title: "Audio 5",
          url:
              "https://pagalfree.com/musics/128-Ek%20Tarfa%20-%20Dhvani%20Bhanushali%20128%20Kbps.mp3",
          image:
              "https://t3.ftcdn.net/jpg/04/54/66/12/360_F_454661277_NtQYM8oJq2wOzY1X9Y81FlFa06DVipVD.jpg"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF03174C),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DailyActivities_Home(title: '',)),
              );
            },
          ),
          backgroundColor: const Color(0xFF03174C),
          title: Text(
            "Recommended Music",
            style: TextStyle(
                color: Colors.white70,
                fontStyle: FontStyle.italic,
                fontSize: 20.0),
          ),
        ),
        body: Stack(children: [
          SvgPicture.asset(
            'assets/bg_home_border.svg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: AlignmentDirectional.topStart,
          ),
          SvgPicture.asset(
            'assets/bg_moon_home.svg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: AlignmentDirectional.topStart,
          ),
          Column(children: [
            //divided into two parts
            //one which consists of list of songs
            Expanded(
              child: ListView.builder(
                  itemCount: getList().length,
                  itemBuilder: (context, index) => customListView(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailPage(mMusic: music[index])),
                          );
                        },
                        title: music[index].title,
                        image: music[index].image,
                      )),
            ),
          ]),
        ]));
  }
}
