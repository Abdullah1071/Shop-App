import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        leading: const Icon(Icons.favorite_border),
        trailing: const Icon(Icons.shopping_cart_checkout_outlined),
        title: Text(
          product.title,
          textAlign: TextAlign.center,
        ),
      ),
      child: Image.network(
        product.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
