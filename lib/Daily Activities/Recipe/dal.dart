import 'package:flutter/material.dart';

import 'recipe.dart';

class Dal extends StatefulWidget {
  const Dal({required this.title});

  final String title;

  @override
  State<Dal> createState() => _DalState();
}

class _DalState extends State<Dal> {
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
                        image: new AssetImage("assets/recipes/makhani.jpeg"),
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
                        'Dal Makhani Recipe',
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
                      child: Text('2 Cups sabut urad dal'),
                    ),
                    Container(
                      height: 20,
                      child: Text('8 cups water'),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 tbsp salt'),
                    ),
                    Container(
                      height: 20,
                      child: Text('1 tbsp ginger sliced'),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 tbsp butter'),
                    ),
                    Container(
                      height: 20,
                      child: Text('1 tbsp oil'),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 tsp shahi jeera'),
                    ),
                    Container(
                      height: 20,
                      child: Text('1 tsp kasoori meethi'),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 cups tomato puree'),
                    ),
                    Container(
                      height: 20,
                      child: Text('1 tsp chilli powder'),
                    ),
                    Container(
                      height: 20,
                      child: Text('1 tsp sugar'),
                    ),
                    Container(
                      height: 20,
                      child: Text('1/2 cups cream for garnishing'),
                    ),
                    Container(
                      height: 20,
                      child: Text('green chillies (slit lengthwise)'),
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
                          height: 60,
                          child: Flexible(
                            child: Text(
                              '1. To the dal, add water, 1 Tbsp salt and ginger. Cook until dal becomes tender.',
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
                          height: 70,
                          child: Flexible(
                            child: Text(
                              '2. In a heavy based pan, heat butter and oil. Add shahi jeera and kasoori methi. When they begin to splutter, add tomato puree, remaining salt, chilli powder and sugar.',
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
                    Row(
                      children: [
                        SizedBox(
                          width: 17,
                        ),
                        Container(
                          width: 320,
                          height: 30,
                          child: Flexible(
                            child: Text(
                              '3. Stir-fry over high flame, till the oil separates.',
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
                              '4. Add cooked dal and bring to boil. The consistency should be such that the dal should move around freely when stirred, otherwise add a little water.',
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
                          height: 70,
                          child: Flexible(
                            child: Text(
                              '5. Leave to simmer, uncovered, till well blended. Stir-in cream and once it gets heated through, serve immediately, garnished with green chillies',
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 17,
                        ),
                      ],
                    ),
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
