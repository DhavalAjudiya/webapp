import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:webapp/pan_pacific/screen/vehicles.dart';
import 'package:webapp/phone_auth/sign_in_with_phone.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // if (kIsWeb) {
  //   await Firebase.initializeApp(
  //     options: const FirebaseOptions(
  //       apiKey: "AIzaSyA3zIe4y5qYsygoiIDC4FPW-IlnYO3mONM",
  //       appId: "1:339395406805:web:7c71a0103b395fe32e2b5c",
  //       authDomain: "stream-ff0cb.firebaseapp.com",
  //       messagingSenderId: "339395406805",
  //       projectId: "stream-ff0cb",
  //       storageBucket: "stream-ff0cb.appspot.com",
  //       measurementId: "G-2WERBNDKJR",
  //     ),
  //   );
  // } else {
  // await Firebase.initializeApp();
  // }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: VihiclesScreen(),
        );
      },
    );
  }
}
