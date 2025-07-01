// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

/// Action: getAttributeKey
Future getAttributeKey(String key) async {
  final currentList = FFAppState().selectedAttributesKeys;
  final updatedList = List<String>.from(currentList);

  if (!updatedList.contains(key)) {
    updatedList.add(key);
  }

  FFAppState().selectedAttributesKeys = updatedList;
}
