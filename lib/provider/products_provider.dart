import 'package:flutter/material.dart';
import '../models/products.dart';

class Productss with ChangeNotifier {
  final List<Products> _items = [
    Products(
        id: "01",
        imageUrl: "assests/ft2000.png",
        title: "Smart Watch",
        price: 475.95),
    Products(
      id: "02",
      imageUrl: 'assests/img-adriano.png',
      price: 399,
      title: 'Adriano',
    ),
    Products(
      id: "03",
      imageUrl: 'assests/img-wearable.png',
      price: 235,
      title: 'Smart Watch',
    ),
  ];
  // var _showFav = false;
  // var _showAll = true;
  List<Products> get items {
    // if (_showFav) {
    //   return _items.where((proItem) => proItem.isFav).toList();
    // }
    return [..._items];
  }

  // void showFav() {
  //   _showFav = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showAll = false;
  //   notifyListeners();
  // }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
