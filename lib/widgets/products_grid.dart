import 'package:flutter/material.dart';

import '../widgets/products_items.dart';
import 'package:provider/provider.dart';
import '../provider/products_provider.dart';

class ProductsGrid extends StatelessWidget {
  final bool showFav;
  ProductsGrid(this.showFav);
  @override
  Widget build(BuildContext context) {
    //  This will initiate a direct communication between
    //this class and the store "Prodcutss Class"
    //in provider.dart file

    final productData = Provider.of<Productss>(context);
    final producs = productData.items;
// Here we import the ProductsItem class (Each product shape) then
// we Loop through it using ProductItem widget which specifies how
// each product will look and fetch the data from Productss using
//the listener by using prducs variable that will render each
//product details
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemCount: producs.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: producs[i],
        child: ProductsItems(
          producs[i].id,
          producs[i].imageUrl,
          producs[i].title,
        ),
      ),
    );
  }
}
