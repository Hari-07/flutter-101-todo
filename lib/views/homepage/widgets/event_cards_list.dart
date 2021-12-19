import 'package:flutter/material.dart';
import 'package:flutter_101_todo/models/event.dart';
import 'package:flutter_101_todo/views/homepage/widgets/event_card.dart';

class EventCardsList extends StatelessWidget {
  const EventCardsList({
    Key? key,
    required this.eventList,
  }) : super(key: key);

  final List<Event> eventList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return EventCard(event: eventList[index]);
      },
      itemCount: eventList.length,
    );
  }
}
