import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/products_provider.dart';
import '../models/products.dart';

// We used this Widget properties to map into it and
//extract Product constructor values and replace

// How each item will look like
// Each item need an image,model,type and price
// So we should create a class before we loop through

class ProductsItems extends StatelessWidget {
  // static const routeName = "product-details";
  // final String idd;
  // final String title;
  // final String imageUrl;
  // ProductsItems(this.idd, this.imageUrl, this.title);
  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<Products>(context, listen: false);
    // print(idd);
    // print(title);
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
              // MaterialPageRoute(
              //   builder: (ctx) => ProductDetails(idd),
              // ),
              "product-details",
              arguments: {"title": pro.title});

          // Navigator.of(context).popAndPushNamed(
          //   ProductDetails.routeName,
          //   arguments: title,
          // );
        },
        child: GridTile(
          child: GestureDetector(
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (ctx) => ProductDetails(),
              //   ),
              // );

              // Navigator.of(context).popAndPushNamed(
              //   ProductDetails.routeName,
              //   arguments: title,
              // );
            },
            child: Image.asset(
              pro.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          footer: GridTileBar(
            leading: IconButton(
              onPressed: () {
                print("Liban");
              },
              icon: Icon(pro.isFav ? Icons.favorite : Icons.favorite_border),
            ),
            trailing: Consumer<Products>(
              builder: (ctx, pro, _) => IconButton(
                onPressed: () {
                  pro.toggleFavoriteStatus();
                },
                icon: Icon(Icons.shopping_cart),
              ),
            ),
            title: Text(
              pro.title,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.amber, fontSize: 10),
            ),
          ),
        ),
      ),
    );
  }
}
