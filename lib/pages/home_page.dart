// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_fun/components/timeline/timeline.dart';

class HomePage extends StatelessWidget {
  static String path = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
