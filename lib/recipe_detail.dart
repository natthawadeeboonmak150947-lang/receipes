import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:receipes/model/receipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({super.key, required this.recipe});

  @override
  State<StatefulWidget> createState() {
    return RecipeDetailState();
  }
}

class RecipeDetailState extends State<RecipeDetail> {
  int sliderValue = 1; //เติมตรงนี้
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Detail'),
      ),
      body: Center(
        //เปลี่ยน เป็นcenter
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8.0),
              Image(image: AssetImage(widget.recipe.imgUrl)),
              const SizedBox(height: 16.0),
              Text(
                '${widget.recipe.imgLabel} Details',
                style: GoogleFonts.robotoSlab(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 219, 43, 12),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                widget.recipe.detail,
                style: GoogleFonts.sarabun(
                  fontSize: 16.0, fontWeight: FontWeight.normal
                ),
                textAlign: TextAlign.left,
              ),
              //เติมใหม่
              Expanded(
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    final ingredient = widget.recipe.ingredients[index];
                    return Text(
                      '${ingredient.quantity *sliderValue } ${ingredient.unit} ${ingredient.name}',
                      style: GoogleFonts.sarabun(
                        fontSize: 14.0,
                      ),
                    );
                  },
                  itemCount: widget.recipe.ingredients.length,
                ),
              ),
              Slider(
                min: 1.0,
                max: 10.0,
                divisions: 10,
                label: '${sliderValue} servings',
                value: sliderValue.toDouble(),
                onChanged: (newValue) {
                  setState(() {
                    sliderValue = newValue.toInt(); //เปลี่ยนเป็น toint
                  });
                  
                },
              ),
          
              
            ],
          ),
        ),
      ),
    );
  }
}
