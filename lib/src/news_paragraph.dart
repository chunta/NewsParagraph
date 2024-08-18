import 'package:flutter/material.dart';
import 'bold_title_render_object_widget.dart';

class NewsParagraph extends StatelessWidget {
  final String text;
  final int titleLength;
  final Color titleColor;
  final Color bodyColor;

  const NewsParagraph({
    super.key,
    required this.text,
    this.titleLength = 0,
    this.titleColor = Colors.black,
    this.bodyColor = Colors.black87,
  });

  @override
  Widget build(BuildContext context) {
    return BoldTitleRenderObjectWidget(
      text: text,
      titleLength: titleLength,
      titleStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: titleColor,
      ),
      bodyStyle: TextStyle(
        fontSize: 16,
        color: bodyColor,
      ),
    );
  }
}
