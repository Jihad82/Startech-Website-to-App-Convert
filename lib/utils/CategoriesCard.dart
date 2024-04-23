import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  final String title;
  final String imageUrl;


  const CategoriesCard ({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle the tap event, you can navigate to the provided link
        // using Navigator.push or launch a URL using url_launcher package
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Image.network(
              imageUrl,
              width: 48,
              height: 48,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 4),
            Text(
              title,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
