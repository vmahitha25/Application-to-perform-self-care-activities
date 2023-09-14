// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:major_project/Daily%20Activities/Book/screens.dart/splashscreen.dart';

void main() {
  runApp(const Book());
}

class Book extends StatelessWidget {
  const Book({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Bookfores",
        home: splashscreen(),
      )
    );
  }
}