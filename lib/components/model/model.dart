

class CategoryModel{
  final String title;
  final String image;

  CategoryModel({
    required this.title,
    required this.image
  });
}

class Item{
  final String name;
  final String image;
  final String?offer;
  final String price;
  final String? priceA;
  final bool isF ;
  final bool isC ;

  Item({
    required this.name,
    required this.image,
    this.offer,
    required this.price,
    this.priceA,
    required this.isF,
    required this.isC
  });

}
class Item2{
  final String name;
  final String image;
  final String price;
  final String? priceA;
  final bool isF ;
  final bool isC ;

  Item2({
    required this.name,
    required this.image,
    required this.price,
    this.priceA,
    required this.isF,
    required this.isC
  });

}