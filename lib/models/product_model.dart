class ProductModel {
  final int id;
  final String title;
  final String thumbnail;
  final int price;
  final String brand;
  final double rating;
  final String description;
  final List images;

  ProductModel.fromParsedJson(Map<String, dynamic> result)
      : id = result['id'],
        title = result['title'],
        thumbnail = result['thumbnail'],
        price = result['price'],
        brand = result['brand'],
        rating = result['rating']?.toDouble(),
        description = result['description'],
        images = result['images'];
}
