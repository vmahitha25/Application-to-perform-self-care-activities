import 'package:flutter/material.dart';

import 'recipe.dart';

class Cake extends StatefulWidget {
  const Cake({required this.title});
  final String title;

  @override
  State<Cake> createState() => _CakeState();
}

class _CakeState extends State<Cake> {
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
                        image: new AssetImage("assets/recipes/fudge.jpeg"),
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
                        'Chocolate Fudge Cake Recipe',
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
                      child:
                          Text('150ml sunflower oil, plus extra for the tin'),
                    ),
                    Container(
                      height: 20,
                      child: Text('175g self-raising flour'),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 tbsp cocoa powder'),
                    ),
                    Container(
                      height: 20,
                      child: Text('1 tsp bicarbonate of soda'),
                    ),
                    Container(
                      height: 20,
                      child: Text('150g caster sugar'),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 tbsp golden syrup'),
                    ),
                    Container(
                      height: 20,
                      child: Text('2 large eggs, lightly beaten'),
                    ),
                    Container(
                      height: 20,
                      child: Text('150ml semi-skimmed milk'),
                    ),
                    Container(
                      height: 20,
                      child: Text(
                        'For the icing',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Text('100g unsalted butter'),
                    ),
                    Container(
                      height: 20,
                      child: Text('225g icing sugar'),
                    ),
                    Container(
                      height: 20,
                      child: Text('40g cocoa powder'),
                    ),
                    Container(
                      height: 20,
                      child: Text('2½ tbsp milk (a little more if needed)'),
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
                              '1. Heat the oven to 180C/160C fan/gas 4. Oil and line the base of two 18cm sandwich tins. Sieve the flour, cocoa powder and bicarbonate of soda into a bowl. Add the caster sugar and mix well.',
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
                              '2. Make a well in the centre and add the golden syrup, eggs, sunflower oil and milk. Beat well with an electric whisk until smooth.',
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
                              '3. Pour the mixture into the two tins and bake for 25-30 mins until risen and firm to the touch. Remove from oven, leave to cool for 10 mins before turning out onto a cooling rack.',
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
                              '4. To make the icing, beat the unsalted butter in a bowl until soft. Gradually sieve and beat in the icing sugar and cocoa powder, then add enough of the milk to make the icing fluffy and spreadable.',
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
                              '5. Sandwich the two cakes together with the butter icing and cover the sides and the top of the cake with more icing.',
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
