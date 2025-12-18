import 'package:receipes/model/ingredient.dart';

class Recipe {
  String imgLabel;
  String imgUrl;
  String detail;
  List<Ingredient>ingredients = [];
  Recipe(this.imgUrl, this.imgLabel, this.detail,this.ingredients);
static List<Recipe> samples = 
  [
   Recipe('assets/images/4460.webp', 'Prawn massaman curry', 
   'A rich and aromatic Thai curry made with tender prawns, coconut milk,and fragrant spices. The mild sweetness blends perfectly with savory flavors, creating a comforting and luxurious dish.',
   [
      Ingredient(name: 'Mussels', quantity: 500, unit: 'g'),
      Ingredient(name: 'Garlic', quantity: 3, unit: 'cloves'),
      Ingredient(name: 'Thai bird\'s eye chilies', quantity: 5, unit: ''),
      Ingredient(name: 'Thai basil leaves', quantity: 1, unit: 'handful'),
      Ingredient(name: 'Oyster sauce', quantity: 2, unit: 'tbsp'),
      Ingredient(name: 'Soy sauce', quantity: 1, unit: 'tbsp'),
      Ingredient(name: 'Sugar', quantity: 1, unit: 'tsp'),
      Ingredient(name: 'Vegetable oil', quantity: 2, unit: 'tbsp'),
    ]
    ),
   Recipe('assets/images/8018.webp', 'Beef massaman curry', 
   'A classic Thai massaman curry featuring slow-cooked beef, coconut milk,and warm spices. The sauce is thick, creamy, and slightly sweet,delivering deep and satisfying flavors in every bite.',
   [
      Ingredient(name: 'Beef', quantity: 500, unit: 'g'),
      Ingredient(name: 'Coconut milk', quantity: 400, unit: 'ml'),
      Ingredient(name: 'Massaman curry paste', quantity: 2, unit: 'tbsp'),
      Ingredient(name: 'Brown sugar', quantity: 1, unit: 'tsp'),
      Ingredient(name: 'Fish sauce', quantity: 1, unit: 'tbsp'),
      Ingredient(name: 'Vegetable oil', quantity: 2, unit: 'tbsp'),
    ]
    ),
   Recipe('assets/images/1.webp', 'Crying tiger beef salad',
   'A spicy Thai salad made with grilled beef, fresh herbs, and chili-lime dressing.The bold, smoky flavor of the beef pairs perfectly with the tangy and spicy sauce,making it a vibrant and refreshing dish.',
   [
      Ingredient(name: 'Beef', quantity: 500, unit: 'g'),
      Ingredient(name: 'Lime juice', quantity: 2, unit: 'tbsp'),
      Ingredient(name: 'Chili flakes', quantity: 1, unit: 'tsp'),
      Ingredient(name: 'Cilantro', quantity: 1, unit: 'handful'),
      Ingredient(name: 'Vegetable oil', quantity: 2, unit: 'tbsp'),
    ]
    ),
   Recipe('assets/images/2.webp', 'Thai pumpkin curry', 
   'A comforting Thai curry made with tender pumpkin and creamy coconut milk.The natural sweetness of the pumpkin balances beautifully with mild spices,resulting in a smooth and flavorful vegetarian-friendly dish.',
   [
      Ingredient(name: 'Pumpkin', quantity: 500, unit: 'g'),
      Ingredient(name: 'Coconut milk', quantity: 400, unit: 'ml'),
      Ingredient(name: 'Thai curry paste', quantity: 2, unit: 'tbsp'),
      Ingredient(name: 'Vegetable oil', quantity: 2, unit: 'tbsp'),
    ]
    ),
  ];

}