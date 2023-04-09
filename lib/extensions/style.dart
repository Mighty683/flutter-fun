import 'package:flutter/material.dart';

class StyleTheme {
  final Spacing spacing;

  const StyleTheme({required this.spacing});

  static StyleTheme of(BuildContext context) {
    final StyleProvider result =
        context.dependOnInheritedWidgetOfExactType<StyleProvider>()!;
    return result.styleTheme;
  }
}

class StyleProvider extends InheritedWidget {
  final StyleTheme styleTheme;
  const StyleProvider(
      {Key? key, required this.styleTheme, required Widget child})
      : super(key: key, child: child);
  @override
  bool updateShouldNotify(covariant StyleProvider oldWidget) {
    return styleTheme != oldWidget.styleTheme;
  }
}

class Spacing {
  final double small;

  const Spacing({required this.small});
}
