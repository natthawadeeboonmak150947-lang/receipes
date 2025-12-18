class Recipe {
 String imgLabel; 
 String imageUrl; 
 String detail;
 
Recipe(this.imageUrl , this.imgLabel , this.detail);

static List<Recipe> samples = 
  [
   Recipe('assets/images/4460.webp', 'Prawn massaman curry', 
   'A rich and aromatic Thai curry made with tender prawns, coconut milk,and fragrant spices. The mild sweetness blends perfectly with savory flavors, creating a comforting and luxurious dish.'),
   Recipe('assets/images/8018.webp', 'Beef massaman curry', 
   'A classic Thai massaman curry featuring slow-cooked beef, coconut milk,and warm spices. The sauce is thick, creamy, and slightly sweet,delivering deep and satisfying flavors in every bite.'),
   Recipe('assets/images/1.webp', 'Crying tiger beef salad',
   'A spicy Thai salad made with grilled beef, fresh herbs, and chili-lime dressing.The bold, smoky flavor of the beef pairs perfectly with the tangy and spicy sauce,making it a vibrant and refreshing dish.'),
   Recipe('assets/images/2.webp', 'Thai pumpkin curry', 
   'A comforting Thai curry made with tender pumpkin and creamy coconut milk.The natural sweetness of the pumpkin balances beautifully with mild spices,resulting in a smooth and flavorful vegetarian-friendly dish.'),
  ];
Recipe(this.imageUrl , this.imgLabel);

static List<Recipe> samples = 
  [
   Recipe('assets/images/4460.webp', 'Prawn massaman curry'),
   Recipe('assets/images/8018.webp', 'Beef massaman curry'),
   Recipe('assets/images/1.webp', 'Crying tiger beef salad'),
   Recipe('assets/images/2.webp', 'Thai pumpkin curry'),
  ];
}