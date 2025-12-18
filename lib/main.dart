import 'package:flutter/material.dart';
import 'package:receipes/model/receipe.dart';
import 'package:receipes/recipe_detail.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ReceipesApp());
}

class ReceipesApp extends StatelessWidget {
  const ReceipesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 121, 87),
        ),
      ),
      home: const MyHomePage(title: 'Receip Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(child: Container(
           child: ListView.builder(
              itemCount: Recipe.samples.length,
             itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  //print((Recipe.samples[index].imageUrl));
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => RecipeDetail(recipe:Recipe.samples[index]),
                    ),
                  );
                },
                child: buildRecipeCard(Recipe.samples[index]),
              );
             },
           ),
        ),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
        children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),
            SizedBox(height: 8.0,),
            Text(
              recipe.imgLabel, style:GoogleFonts.robotoSlab(fontSize: 20.0, fontWeight: FontWeight.bold)
            ),
          ],
        ),
      ),
    );
  }

}
