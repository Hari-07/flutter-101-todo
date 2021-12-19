import 'package:flutter/material.dart';
import 'package:flutter_101_todo/controllers/appdata.dart';
import 'package:flutter_101_todo/models/event.dart';
import 'package:flutter_101_todo/views/homepage/event_list_page.dart';

class SaveEventFAB extends StatelessWidget {
  final String eventLabel;

  const SaveEventFAB({
    Key? key,
    required this.eventLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.black,
      onPressed: () {
        if(eventLabel.isNotEmpty){
          AppData.addEvent(Event(data: eventLabel));
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const EventListPage()));
        }
      },
      child: const Icon(
        Icons.check,
        color: Colors.white,
      ),
    );
  }
}
