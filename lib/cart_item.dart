import 'package:flutter/material.dart';
import 'package:virtual_ace_x_app/product_view_page.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, required this.quantity});
}

class Cart with ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => [..._items];

  void addToCart(Product product) {
    final existingIndex = _items.indexWhere((item) => item.product.id == product.id);
    if (existingIndex != -1) {
      // If the product is already in the cart, increase the quantity
      _items[existingIndex].quantity++;
    } else {
      // If the product is not in the cart, add it with a quantity of 1
      _items.add(CartItem(product: product, quantity: 1));
    }
    notifyListeners();
  }

  // Add other cart-related methods as needed
}
