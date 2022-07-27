class Product {
  String id;
  String title;
  String description;
  String price;
  String imageUrl;
  bool isFavourite;
  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavourite = false,
  });
}
