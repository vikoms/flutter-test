import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalAmount {
    var totalAmount = 0.0;
    _items.forEach((key, value) {
      totalAmount += value.quantity * value.price;
    });
    return totalAmount;
  }

  void addCartItem(String productId, String title, double price) {
    if (_items.containsKey(productId)) {
      // Change quantity for existing item
      _items.update(
          productId,
          (value) => CartItem(
                id: value.id,
                price: value.price,
                title: value.title,
                quantity: value.quantity + 1,
              ));
    } else {
      _items.putIfAbsent(
          productId,
          () => CartItem(
              id: DateTime.now().toString(),
              title: title,
              price: price,
              quantity: 1));
    }
    notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void toggleItemCount(String productId, bool isAdd) {
    var existingItem = _items[productId];
    if (existingItem!.quantity <= 1 && !isAdd) {
      removeItem(productId);
    } else {
      _items.update(
        productId,
        (value) => CartItem(
          id: value.id,
          price: value.price,
          quantity: isAdd ? value.quantity + 1 : value.quantity - 1,
          title: value.title,
        ),
      );
      notifyListeners();
    }
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}
