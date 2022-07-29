import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String title;
  final int price;
  final String imageUrl;

  Product({
    required this.title,
    required this.imageUrl,
    required this.price,
  });

  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
        title: snap['name'],
        imageUrl: snap['image'],
        price: snap['price']);
    return product;
  }


}
