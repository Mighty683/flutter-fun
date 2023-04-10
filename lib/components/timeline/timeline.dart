import 'package:flutter/widgets.dart';
import 'package:flutter_fun/components/timeline/data/event.dart';
import 'package:flutter_fun/components/timeline/components/line.dart';
import 'package:flutter_fun/extensions/style.dart';

class Timeline extends StatelessWidget {
  final List<TimelineEvent> events;

  const Timeline({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    var theme = StyleTheme.of(context);
    return Container(
      child: Stack(children: [
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(theme.spacing.small),
          child: Line(),
        ))
      ]),
    );
  }
}
