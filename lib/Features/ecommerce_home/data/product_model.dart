class ProductModel {
  final num id;

  final String productTitle;
  final num productPrice;
  final num productSale;
  final num productRate;
  final String imagePath;
  bool productSelected;

   ProductModel(
      {required this.id,
        this.productSelected = false,
      required this.productPrice,
      required this.productRate,
      required this.productSale,
        required this.imagePath,
      required this.productTitle});

  factory ProductModel.fromJson(Map<String, dynamic> parsedJson) {
    return ProductModel(
        id: parsedJson['id'],
        productPrice: parsedJson['price'],
        productRate: parsedJson['rating'],
        productSale: parsedJson['discountPercentage'],
        productTitle: parsedJson['title'],
    imagePath:parsedJson['thumbnail'] );
  }
}
