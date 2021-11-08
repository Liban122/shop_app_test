import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/products_provider.dart';
import '../widgets/products_grid.dart';

enum Filter { favorite, all }

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  var _showFav = false;
  @override
  Widget build(BuildContext context) {
    // final proContainer = Provider.of<Productss>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Products Page",
          ),
        ),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (Filter selected) {
              setState(
                () {
                  if (selected == Filter.favorite) {
                    _showFav = true;
                  } else {
                    _showFav = false;
                  }
                },
              );
            },
            itemBuilder: (_) => [
              const PopupMenuItem(
                child: Text("Favorites"),
                value: Filter.favorite,
              ),
              const PopupMenuItem(
                child: Text("Show All"),
                value: Filter.all,
              ),
            ],

            // icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 30),
        child: ProductsGrid(_showFav),
      ),
    );
  }
}
