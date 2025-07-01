// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

/// Action: updateAttributeSelection
Future storeAttributeValue(String key, String value) async {
  final currentMap = FFAppState().selectedProductAttributes;
  final updatedMap = Map<String, String>.from(currentMap);

  // Always update or overwrite the key with the new value
  updatedMap[key] = value;

  // Save back to app state
  FFAppState().selectedProductAttributes = updatedMap;

  // Optionally update values list too
  FFAppState().selectedAttributesValues = updatedMap.values.toList();
}
