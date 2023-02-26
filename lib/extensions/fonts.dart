import 'package:flutter/material.dart';

class FontsTheme {
  final TextStyle body;

  FontsTheme({required this.body});

  copyWith({TextStyle? body}) {
    return FontsTheme(
      body: body ?? this.body,
    );
  }

  withColor(Color color) {
    return copyWith(
      body: body.copyWith(color: color),
    );
  }

  static FontsTheme of(BuildContext context) {
    final FontsProvider result =
        context.dependOnInheritedWidgetOfExactType<FontsProvider>()!;
    return result.fonts;
  }
}

class FontsProvider extends InheritedWidget {
  final FontsTheme fonts;
  const FontsProvider({Key? key, required this.fonts, required Widget child})
      : super(key: key, child: child);
  @override
  bool updateShouldNotify(covariant FontsProvider oldWidget) {
    return fonts != oldWidget.fonts;
  }
}
