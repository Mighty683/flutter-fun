import 'dart:ui';

import 'package:flutter/material.dart';

class NucleonConfiguration {
  final Color color;
  final Function onTap;

  const NucleonConfiguration({required this.color, required this.onTap});
}

class Nucleon extends StatelessWidget {
  final NucleonConfiguration configuration;
  const Nucleon({
    super.key,
    required this.configuration,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: configuration.color,
        ));
  }
}
