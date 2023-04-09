import 'package:flutter/widgets.dart';
import 'package:flutter_fun/components/timeline/event.dart';
import 'package:flutter_fun/extensions/colors.dart';
import 'package:flutter_fun/extensions/style.dart';

class Line extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = StyleTheme.of(context);
    var colors = ColorsTheme.of(context);
    return Container(
      constraints: BoxConstraints(maxWidth: theme.spacing.small),
      decoration: BoxDecoration(
          color: colors.primary,
          borderRadius: BorderRadius.circular(theme.spacing.small)),
      child: Stack(),
    );
  }
}
