import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_fun/components/atom/atom.dart';
import 'package:flutter_fun/components/atom/nucleon.dart';
import 'package:flutter_fun/extensions/colors.dart';

class HomePage extends StatelessWidget {
  static String path = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox.expand(
        child: Center(
            child: Atom(
          elementsConfiguration: [
            NucleonConfiguration(
                color: ColorsTheme.of(context).primary,
                onTap: () {
                  log('First element tap');
                })
          ],
        )),
      ),
    ));
  }
}
