import 'package:flutter/material.dart';
import 'package:flutter_101_todo/controllers/appdata.dart';
import 'package:flutter_101_todo/models/event.dart';

class EventCard extends StatefulWidget {
  final Event event;

  const EventCard({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Color(0xfff1f4f6),
        border: Border(
          left: BorderSide(
            width: 3.0,
            color: Colors.black,
          ),
        ),
      ),
      child: Row(
        children: [
          Checkbox(
            value: widget.event.completed,
            onChanged: (val) {
              setState(() {
                widget.event.toggleCompleted();
              });
              AppData.saveEvents();
            },
            activeColor: Colors.black,
          ),
          Center(
            child: Text(
              widget.event.data,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
