import 'package:flutter/material.dart';

import '../models/documents/nodes/leaf.dart' as leaf;
import '../models/themes/quill_dialog_theme.dart';
import '../models/themes/quill_icon_theme.dart';
import 'controller.dart';

abstract class EmbedBuilder {
  String get key;
  bool get expanded => true;

  WidgetSpan buildWidgetSpan(Widget widget) {
    return WidgetSpan(child: widget);
  }

  Widget build(
    BuildContext context,
    QuillController controller,
    leaf.Embed node,
    bool readOnly,
    bool inline,
  );
}

typedef EmbedButtonBuilder = Widget Function(
    QuillController controller,
    double toolbarIconSize,
    QuillIconTheme? iconTheme,
    QuillDialogTheme? dialogTheme);
