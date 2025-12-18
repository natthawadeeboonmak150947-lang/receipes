import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:receipes/model/receipe.dart';

class RecipeDetail extends StatefulWidget {
  //receive data from main.dart รับข้อมูลจาก main.dart
  final Recipe recipe;
  //Constructor with required recipe parameter ตัวสร้างที่มีพารามิเตอร์สูตรที่จำเป็น
  const RecipeDetail({super.key, required this.recipe});

  @override
  State<StatefulWidget> createState() {
    return ReceipDetailState();
  }
}

class ReceipDetailState extends State<RecipeDetail> {
  int sliderValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Detail'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // padding ใน card

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage(widget.recipe.imageUrl)),
              const SizedBox(height: 12),
              Text(
                widget.recipe.detail,
                style: const TextStyle(
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.left,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    final ingredient = widget.recipe.ingredients[index];
                    return Text(
                      '${ingredient.quantity *sliderValue} ${ingredient.unit} ${ingredient.name}',
                      style: const TextStyle(
                        fontSize: 16.0,
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
                    sliderValue = newValue.toInt();
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
