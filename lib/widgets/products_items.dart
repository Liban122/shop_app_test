import 'package:flutter/material.dart';

// We used this Widget properties to map into it and
//extract Product constructor values and replace

// How each item will look like
// Each item need an image,model,type and price
// So we should create a class before we loop through

class ProductsItems extends StatelessWidget {
  // static const routeName = "product-details";
  final String idd;
  final String title;
  final String imageUrl;
  ProductsItems(this.idd, this.imageUrl, this.title);
  @override
  Widget build(BuildContext context) {
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
              arguments: {"title": title});

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
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          footer: GridTileBar(
            leading: IconButton(
              onPressed: () {
                print("Liban");
              },
              icon: Icon(Icons.favorite),
            ),
            trailing: IconButton(
              onPressed: () {
                print("Liban");
              },
              icon: Icon(Icons.shopping_cart),
            ),
            backgroundColor: Colors.black26,
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.amber, fontSize: 10),
            ),
          ),
        ),
      ),
    );
  }
}
