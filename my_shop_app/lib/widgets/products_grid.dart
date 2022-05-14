import 'package:flutter/material.dart';
import 'package:my_shop_app/providers/products.dart';
import 'package:my_shop_app/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  bool showFavs;
  ProductsGrid(this.showFavs);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final loadedProducts =
        showFavs ? productsData.favoriteItems : productsData.items;
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 3 / 2,
      ),
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        key: Key('item-${index}'),
        value: loadedProducts[index],
        child: ProductItem(),
      ),
      itemCount: loadedProducts.length,
    );
  }
}
