import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBKiGem5vF57iXki1lmxeeYshIbVUAbiTs",
            authDomain: "retail-connectv1-gire1i.firebaseapp.com",
            projectId: "retail-connectv1-gire1i",
            storageBucket: "retail-connectv1-gire1i.firebasestorage.app",
            messagingSenderId: "772902507394",
            appId: "1:772902507394:web:05bba78aafe9ab96f9f59b",
            measurementId: "G-D4GGVJ2CJ9"));
  } else {
    await Firebase.initializeApp();
  }
}
