import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:major_project/Self-Care_Activities_Home.dart';

class Jokes extends StatefulWidget {
  const Jokes({Key? key}) : super(key: key);

  @override
  _JokesState createState() => _JokesState();
}

class _JokesState extends State<Jokes> {
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
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Jokes"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 390,
                    height: 50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/into.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 1050,
                height: 315,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/j1.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 1050,
                height: 315,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/j2.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 1050,
                height: 315,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/j3.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 1050,
                height: 315,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/j4.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 1050,
                height: 315,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/j5.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 1050,
                height: 315,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/j6.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 1050,
                height: 315,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/j7.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 1050,
                height: 315,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/j8.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 1050,
                height: 315,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/j9.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
