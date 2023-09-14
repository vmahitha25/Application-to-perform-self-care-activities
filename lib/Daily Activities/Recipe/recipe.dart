import 'package:flutter/material.dart';
import '../dailyactivtities_home.dart';
import 'cheese.dart';
import 'cake.dart';
import 'lemon.dart';
import 'butter.dart';
import 'dal.dart';

class Recipe extends StatefulWidget {
  const Recipe({required this.title});

  final String title;

  @override
  State<Recipe> createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Recipes for Better Health'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DailyActivities_Home(title: 'title')),
            );
          },
        ),
      ),
      body: Builder(builder: (context) {
        return Center(
          child: Container(
            width: 1150,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 28),
                  Text(
                    'Easy to learn Recipes',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 25),
                  GestureDetector(
                      child: Container(
                        height: 130,
                        width: 305,
                        child: Row(children: [
                          Container(
                            height: 100,
                            width: 110,
                            decoration: new BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)),
                                image: new DecorationImage(
                                  image: new AssetImage(
                                      "assets/recipes/cheese.jpeg"),
                                  fit: BoxFit.fill,
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 120,
                            width: 180,
                            child: Column(
                              children: [
                                Text(
                                  'Grilled Cheese Sandwich',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 10),
                                Flexible(
                                  child: Text(
                                    'Learn how to make a grilled cheese sandwich in a nonstick pan with buttered bread and American Cheddar for a classic hot sandwich.',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Cheese(
                                  title: 'Grilled Cheese Sandwich')),
                        );
                      }),
                  SizedBox(height: 30),
                  GestureDetector(
                      child: Container(
                        height: 130,
                        width: 305,
                        child: Row(children: [
                          Container(
                            height: 100,
                            width: 110,
                            decoration: new BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)),
                                image: new DecorationImage(
                                  image: new AssetImage(
                                      "assets/recipes/butter.jpeg"),
                                  fit: BoxFit.fill,
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 130,
                            width: 180,
                            child: Column(
                              children: [
                                Text(
                                  'Butter Chicken',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 10),
                                Flexible(
                                  child: Text(
                                    'Butter chicken is a hot favourite with most Indians. The quintessential chicken curry has become popular around the world, Here is how you can easily make it at home.',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const Butter(title: 'Butter Chicken')),
                        );
                      }),
                  SizedBox(height: 30),
                  GestureDetector(
                      child: Container(
                        height: 130,
                        width: 305,
                        child: Row(children: [
                          Container(
                            height: 100,
                            width: 110,
                            decoration: new BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)),
                                image: new DecorationImage(
                                  image: new AssetImage(
                                      "assets/recipes/makhani.jpeg"),
                                  fit: BoxFit.fill,
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 125,
                            width: 180,
                            child: Column(
                              children: [
                                Text(
                                  'Dal Makhani',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 10),
                                Flexible(
                                  child: Text(
                                    'A luscious, creamy dal recipe loaded with butter, this can be served with naan or paratha or accompany with some cooked rice. Learn how to make it.',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const Dal(title: 'Dal Makhani')),
                        );
                      }),
                  SizedBox(height: 30),
                  GestureDetector(
                      child: Container(
                        height: 130,
                        width: 305,
                        child: Row(children: [
                          Container(
                            height: 100,
                            width: 110,
                            decoration: new BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)),
                                image: new DecorationImage(
                                  image: new AssetImage(
                                      "assets/recipes/lemon.jpeg"),
                                  fit: BoxFit.fill,
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 120,
                            width: 180,
                            child: Column(
                              children: [
                                Text(
                                  'Lemon Chicken',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 10),
                                Flexible(
                                  child: Text(
                                    'Try this different yet amazingly delicious version of a chicken. Lemon, chicken, dried chilli, garlic and some sugar is all you need for this fantastic recipe.',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const Lemon(title: 'Lemon Chicken')),
                        );
                      }),
                  SizedBox(height: 30),
                  GestureDetector(
                      child: Container(
                        height: 130,
                        width: 305,
                        child: Row(children: [
                          Container(
                            height: 100,
                            width: 110,
                            decoration: new BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)),
                                image: new DecorationImage(
                                  image: new AssetImage(
                                      "assets/recipes/fudge.jpeg"),
                                  fit: BoxFit.fill,
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 130,
                            width: 180,
                            child: Column(
                              children: [
                                Text(
                                  'Chocolate fudge cake',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 10),
                                Flexible(
                                  child: Text(
                                    'Need a guaranteed crowd-pleasing cake that is easy to make? This super-squidgy chocolate fudge cake with smooth icing is an instant baking win.',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const Cake(title: 'Chocolate Fudge Cake')),
                        );
                      }),
                  SizedBox(height: 60),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
