import 'package:flutter/material.dart';

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Some Motivational Quotes"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 1050,
                height: 450,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("./assets/q1.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 1050,
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  '-Christopher Robin, Winnie the Pooh',
                  textAlign: TextAlign.end,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: 1050,
                height: 350,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/q2.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 1050,
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  '-Lisa Olivera',
                  textAlign: TextAlign.end,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: 1050,
                height: 400,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/q3.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 1050,
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  '-Tomorrow, song by BTS',
                  textAlign: TextAlign.end,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: 1050,
                height: 450,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/q4.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 1050,
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  '-Robert Louis Stevenson',
                  textAlign: TextAlign.end,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: 1050,
                height: 450,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/q5.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 1050,
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  '-Sam J. Miller',
                  textAlign: TextAlign.end,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: 1050,
                height: 500,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/q6.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 1050,
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  '-Joubert Botha',
                  textAlign: TextAlign.end,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: 1050,
                height: 420,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/q7.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 1050,
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  '-Julian Seifter',
                  textAlign: TextAlign.end,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: 1050,
                height: 400,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/q8.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 1050,
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  '-Molly Bahr',
                  textAlign: TextAlign.end,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: 1050,
                height: 420,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/q9.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 1050,
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  '-Albus Dumbledore',
                  textAlign: TextAlign.end,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: 1050,
                height: 350,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/q10.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 1050,
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  '-Buddha',
                  textAlign: TextAlign.end,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: 1050,
                height: 350,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/q11.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 1050,
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  '-John Green',
                  textAlign: TextAlign.end,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: 1050,
                height: 350,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/q12.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 1050,
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  '-Max Lucado',
                  textAlign: TextAlign.end,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
