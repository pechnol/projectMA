import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final Map product;

  ProductDetail({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Screen')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Container(
                width: 300, // Set width to 300
                height: 300, // Set height to 300
                child: Image.network(
                  product['image'],
                  fit: BoxFit.contain, // Center and fit the image
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              product['name'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 8),
            Text(
              product['description'],
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 16),
            Text(
              'Total: \$${product['price'].toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle checkout logic here
              },
              child: Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}