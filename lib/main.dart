import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/app/landing_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:time_tracker_flutter_course/services/auth.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracker',
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: LandingPage(
        auth: Auth(),
      ),
    );
  }
}
