import 'package:calendar_view/calendar_view.dart';
import 'package:example/model/event.dart';
import 'package:example/widgets/event_provider.dart';
import 'package:flutter/material.dart';

class WeekViewWidget extends StatelessWidget {
  final GlobalKey<WeekViewState>? state;
  final double? width;

  const WeekViewWidget({Key? key, this.state, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WeekView<Event>(
      key: state,
      width: width,
      controller: DataProvider.of(context).controller,
    );
  }
}
