import 'package:flutter/material.dart';
import 'package:flutter_101_todo/views/homepage/widgets/event_cards_list.dart';

class EventListPage extends StatelessWidget {
  const EventListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,),
          child: Column(
            children: const [
              SizedBox(
                height: 100,
              ),
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
    );
  }
}

