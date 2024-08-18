import 'package:flutter/widgets.dart';
import 'bold_title_render_object.dart';

class BoldTitleRenderObjectWidget extends LeafRenderObjectWidget {
  final String text;
  final int titleLength;
  final TextStyle titleStyle;
  final TextStyle bodyStyle;

  BoldTitleRenderObjectWidget({
    required this.text,
    required this.titleLength,
    required this.titleStyle,
    required this.bodyStyle,
  });

  @override
  RenderObject createRenderObject(BuildContext context) {
    return BoldTitleRenderObject(
      text: text,
      titleLength: titleLength,
      titleStyle: titleStyle,
      bodyStyle: bodyStyle,
    );
  }

  @override
  void updateRenderObject(BuildContext context, covariant BoldTitleRenderObject renderObject) {
    renderObject
      ..text = text
      ..titleLength = titleLength
      ..titleStyle = titleStyle
      ..bodyStyle = bodyStyle;
  }
}
