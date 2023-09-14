import 'package:flutter/material.dart';
import 'home_page.dart';

class Meme_Generator extends StatelessWidget {
  const Meme_Generator();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TEST Creator',
      home: HomePage(),
    );
  }
}
