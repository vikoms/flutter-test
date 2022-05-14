import 'package:flutter/material.dart';
import 'package:my_shop_app/providers/orders.dart' show Orders;
import 'package:my_shop_app/widgets/order_item.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders-screen';
  @override
  Widget build(BuildContext context) {
    final order = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Order'),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) => OrderItem(
          order.orders[i],
        ),
        itemCount: order.orders.length,
      ),
    );
  }
}
