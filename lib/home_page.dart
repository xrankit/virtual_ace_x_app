import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class Product {
  final String id;
  final String name;
  final String imageUrl;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
  });
}

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: '1',
      name: 'Product 1',
      imageUrl: 'https://example.com/product1.jpg',
      price: 19.99,
    ),
    Product(
      id: '2',
      name: 'Product 2',
      imageUrl: 'https://example.com/product2.jpg',
      price: 29.99,
    ),
    Product(
      id: '3',
      name: 'Product 3',
      imageUrl: 'https://example.com/product3.jpg',
      price: 39.99,
    ),
    Product(
      id: '4',
      name: 'Product 4',
      imageUrl: 'https://example.com/product4.jpg',
      price: 49.99,
    ),
    Product(
      id: '5',
      name: 'Product 5',
      imageUrl: 'https://example.com/product5.jpg',
      price: 59.99,
    ),
    Product(
      id: '6',
      name: 'Product 6',
      imageUrl: 'https://example.com/product6.jpg',
      price: 69.99,
    ),
    Product(
      id: '7',
      name: 'Product 7',
      imageUrl: 'https://example.com/product7.jpg',
      price: 79.99,
    ),
    Product(
      id: '8',
      name: 'Product 8',
      imageUrl: 'https://example.com/product8.jpg',
      price: 89.99,
    ),
    Product(
      id: '9',
      name: 'Product 9',
      imageUrl: 'https://example.com/product9.jpg',
      price: 99.99,
    ),
    Product(
      id: '10',
      name: 'Product 10',
      imageUrl: 'https://example.com/product10.jpg',
      price: 109.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Product Grid View Example'),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
          ),
          itemCount: products.length,
          itemBuilder: (ctx, index) {
            return ProductItem(product: products[index]);
          },
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        children: [
          Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              product.name,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Text(
            'Price: \$${product.price.toStringAsFixed(2)}',
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
          ElevatedButton(
            onPressed: () {
              // Implement action when clicking on a product
            },
            child: const Text('View Details'),
          ),
        ],
      ),
    );
  }
}
