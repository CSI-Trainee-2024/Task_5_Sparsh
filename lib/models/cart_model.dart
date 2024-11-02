class CartModel {
  String imageUrl;
  bool isChecked;
  String coffeeType;
  String coffeeMake;
  String price;
  int quantity;
  String size;

  CartModel(
      {required this.imageUrl,
      required this.coffeeType,
      required this.coffeeMake,
      required this.price,
      required this.size,
      this.isChecked = false,
      this.quantity = 0});
}
