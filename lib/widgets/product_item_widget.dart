import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/products_detail_screen.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(
                product.isFavourite ? Icons.favorite : Icons.favorite_border),
            color: Theme.of(context).colorScheme.secondary,
            onPressed: () {
              product.toggleFavourite();
            },
          ),
          trailing: IconButton(
            icon: const Icon(Icons.shopping_cart_checkout_outlined),
            color: Theme.of(context).colorScheme.secondary,
            onPressed: () {},
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
        ),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, ProductDetailsScreen.route,
              arguments: [product]),
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
