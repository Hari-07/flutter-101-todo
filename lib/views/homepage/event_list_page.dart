import 'package:flutter/material.dart';
import 'package:flutter_101_todo/models/event.dart';
import 'package:flutter_101_todo/views/homepage/widgets/event_card.dart';

class EventListPage extends StatelessWidget {
  const EventListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                'TODO LIST',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: ListView(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
