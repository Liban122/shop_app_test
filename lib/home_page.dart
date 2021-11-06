import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:shop_app_test/widgets/routes.dart';
import '../screen/submitted_screen.dart';
import '../screen/products_1st_screen.dart';
import './provider/products_provider.dart';
import './screen/product_details_p2.dart';
import './widgets/products_items.dart';
import './widgets/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const routeName = "/";
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Productss(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: const ColorScheme(
            primary: Colors.amber,
            onPrimary: Colors.black54,
            primaryVariant: Colors.orange,
            background: Colors.red,
            onBackground: Colors.black,
            secondary: Colors.red,
            onSecondary: Colors.white,
            secondaryVariant: Colors.deepOrange,
            error: Colors.black,
            onError: Colors.white,
            surface: Colors.white,
            onSurface: Colors.black,
            brightness: Brightness.light,
          ),
        ),
        // home: const MyHomePage(),
        // routes: {
        //   "product-details": (context) => ProductDetails(),
        //   "submitt": (context) => Submitted(),
        // },
        onGenerateRoute: Routegenerator().generateRoute,
        initialRoute: "/",
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProductsScreen();
  }
}
