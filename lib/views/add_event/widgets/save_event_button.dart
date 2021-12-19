import 'package:flutter/material.dart';

class SaveEventFAB extends StatelessWidget {
  const SaveEventFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.black,
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Icon(
        Icons.check,
        color: Colors.white,
      ),
    );
  }
}