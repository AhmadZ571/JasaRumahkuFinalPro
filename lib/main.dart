import 'package:flutter/material.dart';
import 'package:jasarumahku/firebase_options.dart';
// import 'pages/onboarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jasarumahku/pages/onboarding_screen.dart';
// ignore: unused_import
import 'package:jasarumahku/pages/servis_ac/service_ac.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red, fontFamily: 'Poppins'),
      home: Onboarding(),
    );
  }
}
