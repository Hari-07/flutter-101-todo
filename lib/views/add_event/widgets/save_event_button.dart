import 'package:flutter/material.dart';
import 'package:flutter_101_todo/controllers/appdata.dart';
import 'package:flutter_101_todo/models/event.dart';

class SaveEventFAB extends StatelessWidget {
  final String eventLabel;

  const SaveEventFAB({
    Key? key,
    required this.eventLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(eventLabel);
    return FloatingActionButton(
      backgroundColor: Colors.black,
      onPressed: () {
        print(eventLabel);
        if(eventLabel.isNotEmpty){
          globalEventList.add(Event(data: eventLabel));
          Navigator.of(context).pop();
          print(globalEventList);
        }
      },
      child: const Icon(
        Icons.check,
        color: Colors.white,
      ),
    );
  }
}
