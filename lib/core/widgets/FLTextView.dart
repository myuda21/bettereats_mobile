import 'package:flutter/material.dart';

class FLTextView extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextOverflow? overflow;
  final int? maxLines;


  const FLTextView({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.overflow,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
