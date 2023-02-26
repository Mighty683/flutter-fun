import 'package:flutter/material.dart';

class ColorsTheme {
  // NEW THEME
  final Color primary;

  ColorsTheme({required this.primary});

  static ColorsTheme of(BuildContext context) {
    final ColorsProvider result =
        context.dependOnInheritedWidgetOfExactType<ColorsProvider>()!;
    return result.colors;
  }
}

class ColorsProvider extends InheritedWidget {
  final ColorsTheme colors;
  const ColorsProvider({Key? key, required this.colors, required Widget child})
      : super(key: key, child: child);
  @override
  bool updateShouldNotify(covariant ColorsProvider oldWidget) {
    return colors != oldWidget.colors;
  }
}
