import 'package:flutter/material.dart';
import 'package:shop_app/widgets/products_grid_widget.dart';

class ProductsOverviewScreen extends StatelessWidget {
  const ProductsOverviewScreen({super.key});

  static const route = '/ProductsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop App'),
      ),
      body: const ProductsGrid(),
    );
  }
}