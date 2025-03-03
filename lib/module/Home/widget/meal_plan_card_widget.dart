import 'package:flutter/material.dart';

class MealPlanCardWidget extends StatelessWidget {
  const MealPlanCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Meal Plan Value", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Icon(Icons.calendar_today, size: 18),
              ],
            ),
            const SizedBox(height: 8),
            _buildProgressBar("Calories", 0, 1892),
            _buildProgressBar("Protein", 0, 142),
            _buildProgressBar("Carbohydrate", 0, 190),
            _buildProgressBar("Fat", 0, 64),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressBar(String label, int current, int total) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$label: $current / $total", style: const TextStyle(fontSize: 14)),
        const SizedBox(height: 4),
        LinearProgressIndicator(
          value: current / total,
          backgroundColor: Colors.grey.shade300,
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
          minHeight: 8,
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
