import 'package:flutter/material.dart';

import 'recipe.dart';

class Butter extends StatefulWidget {
  const Butter({required this.title});
  final String title;

  @override
  State<Butter> createState() => _ButterState();
}

class _ButterState extends State<Butter> {
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
                        image: new AssetImage("assets/recipes/butter.jpeg"),
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
                        'Butter Chicken Recipe',
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
                      child: Text(
                        'For the marinade:',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Text('Raw Chicken'),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 tsp Red Chilli Powder'),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 tsp Ginger-Garlic Paste'),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 tsp Salt'),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 tsp Lemon Juice'),
                    ),
                    Container(
                      height: 20,
                      child: Text('1/2 cup Curd'),
                    ),
                    Container(
                      height: 20,
                      child: const Center(
                        child: Text('1/2 tsp Garam Masala'),
                      ),
                    ),
                    Container(
                      height: 20,
                      child: const Center(
                        child: Text('1 tsp Kasuri Methi'),
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 tsp Mustard Oil'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 20,
                      child: Text(
                        'For gravy:',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 tsp Oil to taste '),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 Butter Cubes'),
                    ),
                    Container(
                      height: 20,
                      child: Text('3 gram Cloves'),
                    ),
                    Container(
                      height: 20,
                      child: Text('1 Cinnamon Stick'),
                    ),
                    Container(
                      height: 20,
                      child: Text('sliced 1 tsp Mace'),
                    ),
                    Container(
                      height: 20,
                      child: Text('7 Cardamom'),
                    ),
                    Container(
                      height: 20,
                      child: Text('4 Tomatoes chopped'),
                    ),
                    Container(
                      height: 20,
                      child: Text('1 tsp Garlic'),
                    ),
                    Container(
                      height: 20,
                      child: Text('1 tsp Ginger'),
                    ),
                    Container(
                      height: 20,
                      child: Text('1 tsp Ginger-Garlic Paste'),
                    ),
                    Container(
                      height: 20,
                      child: Text('1 1/2 tsp Red Chilli Powder'),
                    ),
                    Container(
                      height: 20,
                      child: const Center(
                        child: Text('1 tsp Kasuri Methi'),
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 tsp Honey'),
                    ),
                    Container(
                      height: 20,
                      child: Text('1 Green Chilli'),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 tsp Cardamom Powder'),
                    ),
                    Container(
                      height: 20,
                      child: Text('1 tbsp Cream'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Container(
                    //   height: 20,
                    //   child: Text('Steps to follow'),
                    // ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Container(
                      height: 20,
                      child: Text('For Marination:'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
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
                              '1.In a mixing bowl, put raw chicken pieces and add salt, red chilli powder, ginger garlic paste and lemon juice. Mix well.',
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
                          height: 30,
                          child: Flexible(
                            child: Text(
                              '2.Refrigerate for about 15-20 minutes.',
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
                          height: 90,
                          child: Flexible(
                            child: Text(
                              '3.Now add curd to the refrigerated mix. Followed by salt, ginger garlic paste, red chilli powder, garam masala, kasuri methi and mustard oil. Mix well and refrigerate again for an hour.',
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
                          height: 50,
                          child: Flexible(
                            child: Text(
                              '4.Roast the marinated chicken in an oven for about 30 minutes until it is three-fourth done.',
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 17,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 20,
                      child: Text('Prepare the chicken gravy:'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 17,
                        ),
                        Container(
                          width: 320,
                          height: 40,
                          child: Flexible(
                            child: Text(
                              '1.Heat 2 tsp of oil in a pan with butter.',
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
                              '2.Add cloves, cinnamon stick, mace and cardamom. Saute and then add chopped tomatoes, garlic and ginger. Mix well and then grind well.',
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
                          height: 40,
                          child: Flexible(
                            child: Text(
                              '3.In another pan, heat another two cubes of butter, along with ginger garlic paste.',
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
                              '4.Add the tomato puree made from the mixture. Now add red chilli powder, kasuri methi, honey and finally the roasted chicken pieces. Let it simmer.',
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
                          height: 40,
                          child: Flexible(
                            child: Text(
                              '5.Add green chilli, cardamom powder and cream. Mix well.',
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
                          height: 40,
                          child: Flexible(
                            child: Text(
                              '6.Serve with a teaspoon of cream over.',
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
