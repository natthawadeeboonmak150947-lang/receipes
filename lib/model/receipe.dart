class Recipe {
 String imgLabel; 
 String imageUrl; 
 
Recipe(this.imageUrl , this.imgLabel);

static List<Recipe> samples = 
  [
   Recipe('assets/images/4460.webp', 'Prawn massaman curry'),
   Recipe('assets/images/8018.webp', 'Beef massaman curry'),
   Recipe('assets/images/1.webp', 'Crying tiger beef salad'),
   Recipe('assets/images/2.webp', 'Thai pumpkin curry'),
  ];
}