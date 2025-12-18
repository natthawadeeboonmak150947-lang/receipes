import 'package:receipes/model/ingredient.dart';

class Recipe {
 String imgLabel; 
 String imageUrl; 
 String detail;
 List<Ingredient> ingredients;

Recipe(this.imageUrl , this.imgLabel , this.detail , this.ingredients);

static List<Recipe> samples = 
  [
   Recipe('assets/images/4460.webp', 'Prawn massaman curry', 
   'A rich and aromatic Thai curry made with tender prawns, coconut milk,and fragrant spices. The mild sweetness blends perfectly with savory flavors, creating a comforting and luxurious dish.',
   [
    Ingredient(name:'Prawns' , quantity:300 , unit:'grams' ),
    Ingredient(name:'Massaman Curry Paste' , quantity:2 , unit:'tbsp' ),
    Ingredient(name:'Coconut Milk' , quantity:2 , unit:'ml' ),
    Ingredient(name:'Potatoes' , quantity:300 , unit:'medium-sized' ),
    Ingredient(name:'Onion' , quantity:1 , unit:'large' ),

   ],
   ),
   Recipe('assets/images/8018.webp', 'Beef massaman curry', 
   'A classic Thai massaman curry featuring slow-cooked beef, coconut milk,and warm spices. The sauce is thick, creamy, and slightly sweet,delivering deep and satisfying flavors in every bite.',
   [
    Ingredient(name:'Prawns' , quantity:300 , unit:'grams' ),
    Ingredient(name:'Massaman Curry Paste' , quantity:2 , unit:'tbsp' ),
    Ingredient(name:'Coconut Milk' , quantity:2 , unit:'ml' ),
    Ingredient(name:'Potatoes' , quantity:300 , unit:'medium-sized' ),
    Ingredient(name:'Onion' , quantity:1 , unit:'large' ),

   ],
   ),
   Recipe('assets/images/1.webp', 'Crying tiger beef salad',
   'A spicy Thai salad made with grilled beef, fresh herbs, and chili-lime dressing.The bold, smoky flavor of the beef pairs perfectly with the tangy and spicy sauce,making it a vibrant and refreshing dish.',
   [
    Ingredient(name:'Prawns' , quantity:300 , unit:'grams' ),
    Ingredient(name:'Massaman Curry Paste' , quantity:2 , unit:'tbsp' ),
    Ingredient(name:'Coconut Milk' , quantity:2 , unit:'ml' ),
    Ingredient(name:'Potatoes' , quantity:300 , unit:'medium-sized' ),
    Ingredient(name:'Onion' , quantity:1 , unit:'large' ),

   ],
   ),
   Recipe('assets/images/2.webp', 'Thai pumpkin curry', 
   'A comforting Thai curry made with tender pumpkin and creamy coconut milk.The natural sweetness of the pumpkin balances beautifully with mild spices,resulting in a smooth and flavorful vegetarian-friendly dish.',
  [
    Ingredient(name:'Prawns' , quantity:300 , unit:'grams' ),
    Ingredient(name:'Massaman Curry Paste' , quantity:2 , unit:'tbsp' ),
    Ingredient(name:'Coconut Milk' , quantity:2 , unit:'ml' ),
    Ingredient(name:'Potatoes' , quantity:300 , unit:'medium-sized' ),
    Ingredient(name:'Onion' , quantity:1 , unit:'large' ),

   ],
   ),];
 
}