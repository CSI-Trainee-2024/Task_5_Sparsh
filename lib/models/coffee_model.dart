class CoffeeModel{
  String image;
  String coffeeType;
  String coffeeDesc;
  String price;
  bool isChecked;
   
  CoffeeModel( 
    {
      required this.image,
      required this.coffeeType,
      required this.coffeeDesc,
      required this.price,
      this.isChecked =false,
    }
  );



}

