import 'package:flutter/material.dart';

class MealItemWidget extends StatelessWidget {
  final String image;
  final String title;
  final String? description; // Deskripsi opsional

  const MealItemWidget({
    super.key,
    required this.image,
    required this.title,
    this.description, // Bisa null
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          image,
          width: 75,
          height: 75,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(Icons.fastfood, size: 75, color: Colors.grey);
          },
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: description != null
          ? Text(
        description!,
        style: const TextStyle(fontSize: 14, color: Colors.grey),
      )
          : null, // Jika tidak ada deskripsi, tidak ditampilkan
    );
  }
}
