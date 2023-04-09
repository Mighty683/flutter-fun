import 'package:flutter/material.dart';
import 'package:flutter_fun/extensions/colors.dart';
import 'package:flutter_fun/extensions/style.dart';
import 'package:flutter_fun/pages/home_page.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return StyleProvider(
      styleTheme: const StyleTheme(spacing: Spacing(small: 5.0)),
      child: ColorsProvider(
        colors: const ColorsTheme(primary: Colors.blue, secondary: Colors.red),
        child: MaterialApp(
          title: 'Flutter Fun',
          routes: {HomePage.path: (context) => HomePage()},
          initialRoute: HomePage.path,
        ),
      ),
    );
  }
}
