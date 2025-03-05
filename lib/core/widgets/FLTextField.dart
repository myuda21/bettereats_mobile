import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FLTextField extends StatelessWidget {
  final String label;
  final String? hintText;
  final Color textColor;
  final ValueChanged<String>? onChanged;
  final FontWeight fontWeight;
  final TextInputType inputType;

  const FLTextField({
    super.key,
    required this.label,
    this.hintText,
    this.textColor = Colors.black,
    this.onChanged,
    this.fontWeight = FontWeight.normal,
    this.inputType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: fontWeight, color: textColor),
        ),
        const SizedBox(height: 8),
        TextField(
          onChanged: onChanged,
          keyboardType: inputType,
          inputFormatters: _getInputFormatters(),
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ],
    );
  }

  List<TextInputFormatter>? _getInputFormatters() {
    if (inputType == TextInputType.number) {
      return [FilteringTextInputFormatter.digitsOnly];
    } else if (inputType == TextInputType.text) {
      return [FilteringTextInputFormatter.singleLineFormatter];
    }
    return null; // Bisa keduanya
  }
}

