import 'package:flutter/material.dart';
import 'package:flutter_101_todo/views/add_event/widgets/save_event_button.dart';

class AddEvent extends StatelessWidget {
  const AddEvent({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Hello'),
        ),
        floatingActionButton: SaveEventFAB(),
      ),
    );
  }
}