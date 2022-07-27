import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  static const route = '/ProductDetailsScreen';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as List<Product>;
    return Scaffold(
      appBar: AppBar(
        title: Text(routeArgs[0].title),
      ),
    );
  }
}
