import 'package:flutter/material.dart';
import 'package:my_shop_app/providers/cart.dart';
import 'package:provider/provider.dart';

class CartItem extends StatelessWidget {
  final String id;
  final String title;
  final double price;
  final int quantity;
  final String productId;

  CartItem(
    this.id,
    this.title,
    this.price,
    this.quantity,
    this.productId,
  );

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        cart.removeItem(productId);
      },
      background: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 15,
        ),
        color: Theme.of(context).errorColor,
        alignment: Alignment.centerRight,
        child: const Icon(
          Icons.delete,
          size: 40,
          color: Colors.white,
        ),
      ),
      child: Card(
        margin: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 15,
        ),
        child: ListTile(
          leading: CircleAvatar(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: FittedBox(
                child: Text('\$$price'),
              ),
            ),
          ),
          title: Text(title),
          subtitle: Text('Total : \$${price * quantity}'),
          trailing: Container(
            width: 140,
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  child: const Text(
                    '-',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    cart.toggleItemCount(productId, false);
                  },
                ),
                Text(quantity.toString()),
                TextButton(
                  child: const Text(
                    '+',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    cart.toggleItemCount(productId, true);
                  },
                ),
              ],
            ),
          ),
          // Text('$quantity x'))
        ),
      ),
    );
  }
}
