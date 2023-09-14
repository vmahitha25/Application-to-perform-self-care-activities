import 'package:flutter/material.dart';
import 'loginpage.dart';

class Welcome extends StatelessWidget {
  get margin => null;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.fromLTRB(5, 20, 10, 0),
            child: ListView(children: <Widget>[
              Row(children: [
                Container(
                  margin:
                      const EdgeInsets.only(top: 40.0, left: 60.0, bottom: 8.0),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage("img/logo.jpg"))),
                ),
                Container(
                  margin:
                      const EdgeInsets.only(top: 35.0, left: 5.0, bottom: 10.0),
                  child: Text(
                    'Mental Health',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'McLaren'),
                  ),
                )
              ]),
              Container(
                width: 400,
                height: 300,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("img/first1.jpg"))),
              ),
              Container(
                  margin: const EdgeInsets.only(
                      bottom: 10.0, left: 30, right: 30, top: 20.0),
                  child: Text(
                    'Hope we make you smile :) ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: Container(
                  width: w * 0.5,
                  height: h * 0.08,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                          image: AssetImage("img/pic.png"), fit: BoxFit.fill)),
                  child: const Center(
                    child: Text("Let's Get Started!",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ),
              )
            ])));
  }
}
