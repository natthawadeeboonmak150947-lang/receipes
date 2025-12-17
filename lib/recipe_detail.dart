import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:receipes/model/receipe.dart';

class RecipeDetail extends StatelessWidget{
  //receive data from main.dart รับข้อมูลจาก main.dart
  final Recipe recipe;
  //Constructor with required recipe parameter ตัวสร้างที่มีพารามิเตอร์สูตรที่จำเป็น
  const RecipeDetail({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Detail'),
      ),
      body: Column(children: [
        Image(image: AssetImage(recipe.imageUrl)),
        SizedBox(height: 14.0),
        Text(recipe.imgLabel , 
        style:GoogleFonts.robotoSlab(
          color: const Color.fromARGB(255, 198, 30, 0), 
          fontSize: 20, 
          backgroundColor: const Color.fromARGB(255, 246, 178, 141)),
        ),
         Padding(
            padding: const EdgeInsets.all(12.0),   // ขยับ card ให้ไม่ติดขอบจอ
            child: Card(
              elevation: 4,                        // เงาเล็ก ๆ ให้ดูนูน
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16), // ขอบโค้ง
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),      // padding ใน card
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title

                    const SizedBox(height: 12),

                    Text(
                      recipe.detail,
                      style: const TextStyle(
                        fontSize: 14.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]
        ),
    );
  }
}