import 'package:flutter/material.dart';
import 'package:flutter_101_todo/views/add_event/widgets/save_event_button.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({Key? key}) : super(key: key);

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  String eventName = "";

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
            children: [
              const Text(
                'CREATE NEW TODO',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      hintText: 'Enter the name of event/activity',
                    ),
                    onChanged: (val){
                      setState(() {
                        eventName = val;
                      });
                    },
                  ),
              ),
            ]
          ),
        ),
      ),
      floatingActionButton: SaveEventFAB(
        eventLabel: eventName 
      ),
    );
  }
}
