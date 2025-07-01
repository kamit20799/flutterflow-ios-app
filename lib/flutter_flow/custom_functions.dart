import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? concateTwofields(
  String countryCode,
  String? phoneNumber,
) {
// Create a function that will concate two textfields and return output
  if (phoneNumber == null || phoneNumber.isEmpty) {
    return null; // Return null if phoneNumber is null or empty
  }
  return '$countryCode$phoneNumber'; // Concatenate countryCode and phoneNumber
}

String imageFullPath(String imageSrc) {
  // Write a function to concate two fields
  // Create a function that will concatenate two fields and return the full image path
  if (imageSrc == null) {
    return ''; // Return an empty string if either path or imageSrc is null
  }
  return 'https://retailersconnect.com/storage/$imageSrc'; // Concatenate path and imageSrc
}

String? stripHtmlTags(String? content) {
  // Generate a function to stripHtmlTags and also remove special characters except only ,
  if (content == null) {
    return null; // Return null if content is null
  }
  // Remove HTML tags and special characters except for commas
  return content.replaceAll(RegExp(r'<[^>]*>|[^a-zA-Z0-9, ]'), '');
}

String? checkArrayLength(dynamic arrayLength) {
  // Generate a function which will check array length
  // Function to check the length of an array
  if (arrayLength is List) {
    return arrayLength.length > 0
        ? 'Array length: ${arrayLength.length}'
        : 'Array is empty';
  }
  return 'Input is not an array';
}

String formatDateToReadable(String dateTime) {
// Generate a function to trim  2025-05-23 T00:00:00+00:00 from this 2025-05-23 and then convert that date to 23 May 2025 this format
  if (dateTime.isEmpty) {
    return ''; // Return an empty string if dateTime is empty
  }
  // Trim the dateTime to get only the date part
  String datePart = dateTime.split('T')[0];
  // Parse the date and format it to the desired format
  DateTime parsedDate = DateTime.parse(datePart);
  return DateFormat('dd MMMM yyyy').format(parsedDate); // Return formatted date
}

Color? changeBackgroundDynamically(dynamic status) {
  // generate a function if status value is pending then color will be orange and if completed than green else light blue
  if (status == 'pending' || status == 'Pending') {
    return Colors.orange; // Return orange for pending status
  } else if (status == 'completed') {
    return Colors.green; // Return green for completed status
  } else if (status == 'canceled' || status == 'Canceled') {
    return Colors.red; // Return red for canceled status
  } else {
    return Colors.lightBlue; // Return light blue for any other status
  }
}

String? roundTotalAmount(dynamic subtotal) {
  // Generate a function to round off the price 3599.9700000000003 and concat ₹ before the oriec
  if (subtotal is double) {
    // Round off the subtotal to two decimal places
    double roundedAmount = double.parse(subtotal.toStringAsFixed(2));
    return '₹$roundedAmount'; // Concatenate ₹ before the rounded amount
  }
  return null; // Return null if subtotal is not a double
}

String areAllKeysPresent(
  List<String> requiredKeys,
  List<String> selectedAttributes,
) {
  if (selectedAttributes.isEmpty) {
    return 'false';
  }

  for (final key in requiredKeys) {
    if (!selectedAttributes.contains(key)) {
      return 'false';
    }
  }
  return 'true';
}

String? getSelectedAttributeKeys(List<String> attributes) {
  // Generate a function to get the keys from list example {"Color":"Red","Storage":"128GB","Model":"2012"} we only need keys
  String? getSelectedAttributeKeys(Map<String, dynamic> attributes) {
    // Generate a function to get the keys from the provided map
    if (attributes.isEmpty) {
      return null; // Return null if the map is empty
    }
    return attributes.keys.join(', '); // Join keys with a comma and return
  }
}

String? productPrice(
  String? updatedPrice,
  String? originalPrice,
) {
  if (updatedPrice != null && updatedPrice.trim().isNotEmpty) {
    return updatedPrice;
  }
  return originalPrice;
}

String productImage(
  String? updatedImage,
  String? previousImage,
) {
  // Return updatedImage if it's not null and not empty, else return previousImage
  return (updatedImage != null && updatedImage.isNotEmpty)
      ? updatedImage
      : (previousImage ?? '');
}
