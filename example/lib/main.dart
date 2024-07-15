import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:logsuite/logsuite.dart';
import 'sign_up_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Firebase with error handling
  await Firebase.initializeApp().catchError((error) {
    print('Failed to initialize Firebase: $error');
    // Handle error as needed, e.g., show an error dialog
    // You can use Flutter's built-in error handling mechanisms or custom logic.
  });

  LogSuite.initialize(); // Initialize LogSuite

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String appTitle = 'Flutter Demo'; // App title constant

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpPage(),
    );
  }
}
