import 'package:flutter/material.dart';
import '../screen/products_1st_screen.dart';
import "../screen/product_details_p2.dart";
import "../screen/submitted_screen.dart";
import '../models/products.dart';

class Routegenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => ProductsScreen());
      case "product-details":
        return MaterialPageRoute(
          builder: (_) => ProductDetails(),
        );

      case "submitt":
        return MaterialPageRoute(builder: (_) => const Submitted());

      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error"),
      ),
      body: const Center(
        child: Text("Page not found"),
      ),
    );
  });
}
