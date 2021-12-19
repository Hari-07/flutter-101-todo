import 'package:flutter/material.dart';
import 'package:flutter_101_todo/models/event.dart';
import 'package:flutter_101_todo/views/homepage/widgets/event_card.dart';

class EventCardsList extends StatelessWidget {
  const EventCardsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        EventCard(
          event: Event(
            data: 'Event 1'
          ),
        ),
        const SizedBox(height: 10,),
        EventCard(
          event: Event(
            data: 'Event 2'
          ),
        ),
      ],
    );
  }
}
