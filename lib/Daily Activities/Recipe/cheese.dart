import 'package:flutter/material.dart';

import 'recipe.dart';

class Cheese extends StatefulWidget {
  const Cheese({required this.title});
  final String title;

  @override
  State<Cheese> createState() => _CheeseState();
}

class _CheeseState extends State<Cheese> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(widget.title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Recipe(
                  title: 'Activities',
                ),
              ),
            );
          },
        ),
      ),
      body: Center(
        child: Container(
          // height: 450,
          width: 1150,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 220,
                  width: 290,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(0.0)),
                      image: new DecorationImage(
                        image: new AssetImage("assets/recipes/cheese.jpeg"),
                        fit: BoxFit.fill,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 17,
                      ),
                      Text(
                        'Grilled Cheese Sandwich Recipe',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                        overflow: TextOverflow.visible,
                      ),
                      SizedBox(
                        width: 17,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Container(
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 17,
                      ),
                      Text(
                        'Ingredients:',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w200),
                        overflow: TextOverflow.visible,
                      ),
                      SizedBox(
                        width: 17,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      height: 20,
                      child: Text('4 slices of Bread'),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 Sliced Cheese'),
                    ),
                    Container(
                      height: 20,
                      child: Text('3 tbsp Butter'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: [
                        SizedBox(
                          width: 17,
                        ),
                        Container(
                          width: 320,
                          height: 100,
                          child: Flexible(
                            child: Text(
                              '1. Preheat a nonstick skillet over medium heat. Generously butter one side of a slice of bread. Place bread butter-side down in the hot skillet; add 1 slice of cheese. Butter a second slice of bread on one side and place butter-side up on top of cheese.',
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 17,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 17,
                        ),
                        Container(
                          width: 320,
                          height: 100,
                          child: Flexible(
                            child: Text(
                              '2. Cook until lightly browned on one side; flip over and continue cooking until cheese is melted. Repeat with remaining 2 slices of bread, butter, and slice of cheese.',
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 17,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
