import 'package:flutter/material.dart';

class Products with ChangeNotifier {
  final String id;
  final String title;
  final double price;
  final String imageUrl;
  bool isFav;
  Products({
    required this.id,
    required this.imageUrl,
    required this.price,
    required this.title,
    this.isFav = true,
  });
  void toggleFavoriteStatus() {
    // isFav = !isFav;
    notifyListeners();
  }
}
