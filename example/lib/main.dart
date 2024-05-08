import 'package:flutter/material.dart';
import 'package:logsuite/logsuite.dart';

void main() {
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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log Capture Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Button to capture a screenshot (for demonstration purposes)
              },
              child: Text('Capture Screenshot'),
            ),
            ElevatedButton(
              onPressed: () {
                // Button to cause a crash (for demonstration purposes)
                throw Exception('Test crash');
              },
              child: Text('Cause Crash'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Make Network Request'),
            ),
          ],
        ),
      ),
    );
  }
}
