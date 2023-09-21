import 'package:flutter/material.dart';

class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

class ProductViewPage extends StatelessWidget {
  final Product product;

  const ProductViewPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Image.network(
              product.imageUrl,
              width: double.infinity,
              height: 300.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16.0),
            // Product Name
            Text(
              product.name,
              style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            // Product Description
            Text(
              product.description,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            // Product Price
            Text(
              'Price: \$${product.price.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            // Add to Cart Button
            ElevatedButton(
              onPressed: () {
                // Add the product to the cart
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Product added to cart'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: const Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}


void main() {
  runApp(
    MaterialApp(
      home: ProductViewPage(
        product: Product(
          id: '1',
          name: 'Sample Product',
          description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          price: 19.99,
          imageUrl: 'https://example.com/product.jpg',
        ),
      ),
    ),
  );
}

