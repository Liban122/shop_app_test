import 'package:flutter/material.dart';
import '../widgets/products_items.dart';
import "../models/products.dart";

class ProductDetails extends StatelessWidget {
  // final String title;
  // ProductDetails(this.title, {Key? key}) : super(key: key);

  // static const routeName = "/product-details";
  @override
  Widget build(BuildContext context) {
    // final pro =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    // // print(pro);
    // final productId = pro["id"];
    // ignore: unused_local_variable
    // final String productTitle = pro["title"];
    print("productTitle");

    return Scaffold(
      appBar: AppBar(
        title: Text("productTitle"),
      ),
      body: Column(
        children: [
          // const MyStatefulWidget(),
          Center(
            child: RaisedButton(
              child: Text("Submit"),
              onPressed: () {
                Navigator.of(context).pushNamed("submitt");
              },
            ),
          ),
        ],
      ),
    );
  }
}
