import 'package:example/screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:logsuite/logsuite.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Logsuite.initialize();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log Capture Demo',
      home: HomePage(),
    );
  }
}





