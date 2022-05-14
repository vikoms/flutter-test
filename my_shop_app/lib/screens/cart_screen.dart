import 'package:flutter/material.dart';
import 'package:my_shop_app/providers/cart.dart' show Cart;
import 'package:my_shop_app/providers/orders.dart';
import 'package:my_shop_app/screens/orders_screen.dart';
import 'package:my_shop_app/widgets/cart_item.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart-screen';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: Card(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total ',
                    style: TextStyle(fontSize: 20),
                  ),
                  const Spacer(),
                  Chip(
                    label: Text(
                      '\$${cart.totalAmount}',
                      style: const TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  TextButton(
                    onPressed: () {
                      // Provider.of<Orders>(context, listen: false).addOrder(
                      //   cart.items.values.toList(),
                      //   cart.totalAmount,
                      // );
                      // cart.clear();
                      Navigator.of(context).pushNamed(OrdersScreen.routeName);
                    },
                    child: const Text(
                      'Order Now',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (ctx, index) => CartItem(
                  cart.items.values.toList()[index].id,
                  cart.items.values.toList()[index].title,
                  cart.items.values.toList()[index].price,
                  cart.items.values.toList()[index].quantity,
                  cart.items.keys.toList()[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
