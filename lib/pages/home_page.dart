import 'package:flutter/material.dart';
import 'package:flutter_fun/components/timeline/timeline.dart';

class HomePage extends StatelessWidget {
  static String path = '/';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: SizedBox.expand(
        child: Center(
            child: Timeline(
          events: [],
        )),
      ),
    ));
  }
}
