import 'package:flutter_101_todo/models/event.dart';

// List<Event> globalEventList = [];


class AppData {
  static final List<Event> _eventList = [];

  // static void initEvent(event){
    
  // }

  static void addEvent(event){
    _eventList.add(event);
  }

  static List<Event> getEvents() {
    return _eventList;
  }
}