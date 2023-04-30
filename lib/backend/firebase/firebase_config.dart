import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyADZK7MRe06_pisvt3TSQ_2eopyHJCRbYA",
            authDomain: "swqms-2b6de.firebaseapp.com",
            projectId: "swqms-2b6de",
            storageBucket: "swqms-2b6de.appspot.com",
            messagingSenderId: "570261206550",
            appId: "1:570261206550:web:3030ae79917a364c6d2737",
            measurementId: "G-KBM5LQ1BQB"));
  } else {
    await Firebase.initializeApp();
  }
}
