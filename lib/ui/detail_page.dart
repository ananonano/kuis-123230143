import 'package:flutter/material.dart';
import 'package:kuis_123230143/models/product.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.model});
  final Product model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(model.name, style: const TextStyle(color: Colors.white)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Image.network(model.image, fit: BoxFit.contain),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Product Details:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    model.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text("Price  : IDR ${model.price}"),
                  Text("Rating: ${model.rating}"),
                  const SizedBox(height: 24),

                  const Text(
                    "Description",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(model.description),

                  Text(model.category),

                  const SizedBox(height: 12),
                  // Wrap(
                  //   spacing: 8,
                  //   runSpacing: 8,
                  //   children: model.description.map(
                  //         (activity) => Container(
                  //           padding: const EdgeInsets.symmetric(
                  //             horizontal: 12,
                  //             vertical: 6,
                  //           ),
                  //           decoration: BoxDecoration(
                  //             border: Border.all(color: Colors.grey.shade400),
                  //             borderRadius: BorderRadius.circular(6),
                  //           ),
                  //           child: Text(
                  //             activity,
                  //             style: const TextStyle(fontSize: 14),
                  //           ),
                  //         ),
                  //       )
                  //       .toList(),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
