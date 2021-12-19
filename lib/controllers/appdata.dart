import 'dart:convert';

import 'package:flutter_101_todo/models/event.dart';
import 'package:shared_preferences/shared_preferences.dart';

// List<Event> globalEventList = [];


class AppData {
  static List<Event> _eventList = [];
  static late SharedPreferences _sharedPreferences;
  static late List<String> _jsonEventList = [];

  static Future<void> initEvent() async {
    _sharedPreferences = await SharedPreferences.getInstance();

    final _tempJsonEventList = _sharedPreferences.getStringList('todoList');

    if(_tempJsonEventList != null){
      _jsonEventList = _tempJsonEventList;
      _eventList = _tempJsonEventList.map((json) => Event.fromJson(jsonDecode(json))).toList();
    }
  }

  static Future<void> addEvent(event) async {
    _eventList.add(event);
    _jsonEventList.add(jsonEncode(event));

    await _sharedPreferences.setStringList('todoList', _jsonEventList);
  }

  static List<Event> getEvents() {
    return _eventList;
  }
}