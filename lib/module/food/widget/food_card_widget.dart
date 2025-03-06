import 'package:bettereats_mobile/core/widgets/FLTextView.dart';
import 'package:bettereats_mobile/module/food/search_meal_controller.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class FoodCardWidget extends StatelessWidget {
  final Food food;
  final VoidCallback onFavoriteToggle;

  const FoodCardWidget({super.key, required this.food, required this.onFavoriteToggle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.asset(
                  food.imageUrl,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: onFavoriteToggle,
                  child: Icon(
                    Icons.star,
                    color: food.isFavorite ? Colors.yellow : Colors.grey,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FLTextView(
                  text: food.title,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                  
                ),
                const SizedBox(height: 5),
                Wrap(
                  spacing: 5,
                  children: food.categories
                      .map((category) => Chip(
                    label: Text(category, style: const TextStyle(fontSize: 12)),
                    backgroundColor: Colors.orange.shade100,
                  ))
                      .toList(),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildNutrientInfo(LucideIcons.flame, food.calories, Colors.redAccent),
                    _buildNutrientInfo(LucideIcons.beef, food.protein, Colors.red),
                    _buildNutrientInfo(LucideIcons.wheat, food.fat, Colors.orange),
                    _buildNutrientInfo(LucideIcons.droplet, food.carbs, Colors.blue),
                  ],
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () {},
                  child: const Text('Add to Meal Plan', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNutrientInfo(IconData icon, int value, Color? color) {
    return Row(
      children: [
        Icon(icon, size: 24, color: color ?? Colors.green),
        const SizedBox(width: 4),
        Text('$value', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

