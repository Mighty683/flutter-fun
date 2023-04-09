import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter_fun/components/atom/nucleon.dart';
import 'package:simple_animations/simple_animations.dart';

class Atom extends StatelessWidget {
  final List<NucleonConfiguration> elementsConfiguration;
  const Atom({super.key, required this.elementsConfiguration});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 100,
        width: 100,
        child: Stack(
          children: buildStackChildren(),
        ),
      ),
    );
  }

  List<Widget> buildStackChildren() {
    return elementsConfiguration.map((config) {
      return NucleonAtomAnimation(child: Nucleon(configuration: config));
    }).toList();
  }
}

class NucleonAtomAnimation extends StatelessWidget {
  final Widget child;
  late final GlobalKey containerKey = GlobalKey();

  getXPosition(double height, double value) {
    return offsetX(height, (height * 0.3) * sin(value * 2 * pi));
  }

  getYPosition(double width, double value) {
    return offsetY(width, (width * 0.3) * cos(value * 2 * pi));
  }

  offsetX(double height, double value) {
    return value + height / 2 - 5;
  }

  offsetY(double width, double value) {
    return value + width / 2 - 5;
  }

  NucleonAtomAnimation({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return LoopAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: 2),
            builder: (context, value, _) {
              return Stack(
                children: [
                  Positioned(
                    top: getXPosition(constraints.maxHeight, value),
                    left: getYPosition(constraints.maxWidth, value),
                    child: child,
                  )
                ],
              );
            },
            duration: const Duration(seconds: 3),
          );
        },
      ),
    );
  }
}
