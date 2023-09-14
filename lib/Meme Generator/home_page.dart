import 'dart:convert';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:major_project/Self-Care_Activities_Home.dart';
import 'creator_page.dart';
import 'meme_selector.dart';

class TrendingMeme {
  final String title;
  final String url;

  const TrendingMeme({required this.title, required this.url});

  factory TrendingMeme.fromJson(Map<String, dynamic> json) {
    return TrendingMeme(title: json['title'], url: json['url']);
  }
}

Future<List<TrendingMeme>> getTrending() async {
  // final response = await http.get(
  //     Uri.parse('https://reddit-meme.p.rapidapi.com/memes/trending'),
  //     headers: {
  //       'X-RapidAPI-Key': '72af18a58dmshce39c5be599fa81p1f7d0cjsn5e187ff75993',
  //       'X-RapidAPI-Host': 'reddit-meme.p.rapidapi.com'
  //     });
  // List<dynamic> data = jsonDecode(response.body);

  final String response = await rootBundle.loadString('assets/trending.json');
  await Future.delayed(const Duration(milliseconds: 1000));
  List<dynamic> data = jsonDecode(response);

  List<TrendingMeme> results = [];

  for (var i = 0; i < data.length; i++) {
    final entry = data[i];
    results.add(TrendingMeme.fromJson(entry));
  }
  return results;
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<TrendingMeme>> memes;

  @override
  void initState() {
    super.initState();
    memes = getTrending();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Activities_Home()),
            );
          },
        ),
        title: const Text('Meme of the Day'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      // drawer: const NavDrawer(
      //   selected: DrawerSelection.home,
      // ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
              height: 450,
              child: FutureBuilder(
                  future: memes,
                  builder: (context, AsyncSnapshot snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    } else {
                      return Swiper(
                          scale: 0.8,
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, int index) {
                            TrendingMeme item = snapshot.data[index];
                            return Card(
                              elevation: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(children: [
                                  Text(
                                    item.title,
                                    style: const TextStyle(
                                        color: Colors.cyan,
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Image.network(item.url)
                                ]),
                              ),
                            );
                          });
                    }
                  })),
          MemeSelector(memeSelected: (val) => navigateToCreator(val))
        ],
      )),
    );
  }

  navigateToCreator(Meme meme) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => CreatorPage(selectedMeme: meme)));
  }
}
