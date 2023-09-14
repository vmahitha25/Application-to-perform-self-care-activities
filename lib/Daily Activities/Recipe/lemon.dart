import 'package:flutter/material.dart';
import 'package:major_project/Daily%20Activities/Recipe/recipe.dart';

class Lemon extends StatefulWidget {
  const Lemon({key, required this.title});

  final String title;

  @override
  State<Lemon> createState() => _LemonState();
}

class _LemonState extends State<Lemon> {
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
                        image: new AssetImage("assets/recipes/lemon.jpeg"),
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
                        'Lemon Chicken Recipe',
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
                        'Ingredients of Punjabi Lemon Chicken:',
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
                      child: Text('6 Chicken Thighs'),
                    ),
                    Container(
                      height: 20,
                      child: Text('3-4 tbsp refined oil'),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 tsp cumin seeds'),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 onions, julienne'),
                    ),
                    Container(
                      height: 20,
                      child: Text('6 garlic cloves, chopped'),
                    ),
                    Container(
                      height: 20,
                      child: Text('1/2 inch ginger, chopped'),
                    ),
                    Container(
                      height: 20,
                      child: Text('3-4 Green chillies'),
                    ),
                    Container(
                      height: 20,
                      child: const Center(
                        child: Text('3/4 tsp turmeric powder'),
                      ),
                    ),
                    Container(
                      height: 20,
                      child: const Center(
                        child: Text('1 tsp coriander powder'),
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Text('to taste salt'),
                    ),
                    Container(
                      height: 20,
                      child:
                          const Center(child: Text('1 cup fresh lemon juice')),
                    ),
                    Container(
                      height: 20,
                      child: Text('1/2 cup orange juice'),
                    ),
                    Container(
                      height: 20,
                      child: Text('1/4 tsp fresh sugarcane juice'),
                    ),
                    Container(
                      height: 20,
                      child: Text('for garnishing fresh coriander'),
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
                              '1. Heat a heavy cooking vessel on a high heat and once its hot, add the refined oil and swirl the pan to coat the base evenly. Once the oil is nice and hot, add the cumin seeds and saute them until crackling and fragrant.',
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
                              '2. Now add the onions, garlic and ginger and sauté them gently until they take on a light golden brown color. Turn up the heat and then add the spice powders.',
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
                          height: 100,
                          child: Flexible(
                            child: Text(
                              '3. Toast the spices on a high heat until they are intensely aromatic and well toasted. Then add a little water and bhuno the base ingredients repeatedly until the oil rises to the top and the masala is well cooked out.',
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
                              '4. Add some salt and mix well, then add the chicken thighs to the pan. Turn up the heat and fry the chicken in the masala until it is evenly coated with the flavor of the base and is a very light yellowy golden brown in color.',
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
                              '5. Now add the lemon and orange juice to the chicken and deglaze the pan well, scraping up the flavor packed pan deposits on the base of the pan.',
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
                              '6. Stir everything together well to combine, then add a little sugarcane juice to balance the acidity of the lemon juice.',
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
                              '7. Bring the chicken to a boil, then turn the heat to low, cover the pan and let the chicken simmer away until it is cooked to perfection and almost falling off the bone.',
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
                              '8. Once the chicken is cooked, uncover the pan and simmer the light gravy until slightly reduced and concentrated in flavor. Turn off the heat, then garnish with fresh coriander and serve with hot rotis or rice.',
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
