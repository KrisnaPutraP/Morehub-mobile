import 'package:flutter/material.dart';
import 'package:morehub_mobile/models/product_entry.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductEntry product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final fields = product.fields;

    return Scaffold(
      appBar: AppBar(
        title: Text(fields.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Product Name: ${fields.name}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 10),
            Text("Price: Rp${fields.price}",
                style: const TextStyle(fontSize: 18.0)),
            const SizedBox(height: 10),
            Text("Description: ${fields.description}",
                style: const TextStyle(fontSize: 18.0)),
            const SizedBox(height: 10),
            Text("Quantity: ${fields.quantity}",
                style: const TextStyle(fontSize: 18.0)),
            const SizedBox(height: 10),
            Text("Category: ${fields.category}",
                style: const TextStyle(fontSize: 18.0)),
            const SizedBox(height: 10),
            Text("Featured: ${fields.featured}",
                style: const TextStyle(fontSize: 18.0)),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
