import 'package:flutter/material.dart';
import 'package:flutter_101_todo/views/homepage/widgets/event_cards_list.dart';

import 'widgets/add_event_button.dart';

class EventListPage extends StatelessWidget {
  const EventListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 100,
            bottom: 30,
          ),
          child: Column(
            children: const [
              Text(
                'TODO LIST',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: EventCardsList(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const AddNewEventFAB(),
    );
  }
}
