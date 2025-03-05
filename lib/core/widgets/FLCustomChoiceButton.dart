import 'package:flutter/material.dart';

class FLCustomChoiceButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const FLCustomChoiceButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(
        label,
        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
      ),
      selected: isSelected,
      selectedColor: Colors.green,
      backgroundColor: Colors.grey[300],
      onSelected: (_) => onTap(),
    );
  }
}
