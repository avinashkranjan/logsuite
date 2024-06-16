import 'package:flutter/material.dart';
import 'package:logsuite/logsuite.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final LogSuite logSuite = LogSuite();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: logSuite.wrapWithScreenshot(
        context,
        HomeScreen(logSuite: logSuite),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final LogSuite logSuite;

  HomeScreen({required this.logSuite});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LogSuite Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                logSuite.startRecording();
              },
              child: Text('Start Recording'),
            ),
            ElevatedButton(
              onPressed: () {
                logSuite.stopRecording();
              },
              child: Text('Stop Recording'),
            ),
            ElevatedButton(
              onPressed: () async {
                final response = await logSuite.httpClient.get(
                    Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
                print(response.body);
              },
              child: Text('Make Network Request'),
            ),
            ElevatedButton(
              onPressed: () async {
                final crashLogs = await logSuite.getCrashLogs();
                for (var log in crashLogs) {
                  print(log.path);
                }
              },
              child: Text('Retrieve Crash Logs'),
            ),
          ],
        ),
      ),
    );
  }
}
