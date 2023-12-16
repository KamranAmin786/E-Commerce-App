import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<List<Map<String, dynamic>>?> loadJsonData(String path) async {
  try {
    String jsonString = await rootBundle.loadString(path);
    List<dynamic> jsonData = json.decode(jsonString);
    return List<Map<String, dynamic>>.from(jsonData);
  } catch (e) {
    return null;
  }
}

const Color colorWhite = Colors.white;
const Color colorGrey = Colors.grey;
const Color colorBlack = Colors.black;
const Color colorPrimary = Color(0xFFF2F4EC);