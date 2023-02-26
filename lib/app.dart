import 'package:flutter/material.dart';
import 'package:flutter_fun/pages/home_page.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      routes: {HomePage.path: (context) => HomePage()},
      initialRoute: HomePage.path,
    );
  }
}
