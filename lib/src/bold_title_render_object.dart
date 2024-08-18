import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BoldTitleRenderObject extends RenderBox {
  String text;
  int titleLength;
  TextStyle titleStyle;
  TextStyle bodyStyle;

  BoldTitleRenderObject({
    required this.text,
    required this.titleLength,
    required this.titleStyle,
    required this.bodyStyle,
  });

  @override
  void performLayout() {
    final constraints = this.constraints;

    // Combine title and body into a single TextSpan
    final textSpan = TextSpan(
      children: [
        TextSpan(text: text.substring(0, titleLength), style: titleStyle),
        TextSpan(text: text.substring(titleLength), style: bodyStyle),
      ],
    );

    // Layout the combined TextPainter
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: constraints.maxWidth);

    size = Size(textPainter.width, textPainter.height);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final textSpan = TextSpan(
      children: [
        TextSpan(text: text.substring(0, titleLength), style: titleStyle),
        TextSpan(text: text.substring(titleLength), style: bodyStyle),
      ],
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: constraints.maxWidth);

    // Draw the combined text
    textPainter.paint(context.canvas, offset);
  }

  @override
  bool hitTestSelf(Offset position) => true;
}
