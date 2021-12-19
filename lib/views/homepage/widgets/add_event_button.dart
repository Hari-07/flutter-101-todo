import 'package:flutter/material.dart';
import 'package:flutter_101_todo/views/add_event/add_event_page.dart';

class AddNewEventFAB extends StatelessWidget {
  const AddNewEventFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.black,
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => const AddEvent()));
      },
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
