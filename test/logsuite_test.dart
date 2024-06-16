// test/logsuite_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logsuite/logsuite.dart';

void main() {
  group('LogSuite', () {
    late LogSuite logSuite;

    setUp(() {
      logSuite = LogSuite();
    });

    testWidgets('starts and stops recording', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: logSuite.wrapWithScreenshot(
            tester
                .element(find.byType(MaterialApp))
                .findAncestorStateOfType<NavigatorState>()! as BuildContext,
            Scaffold(
              appBar: AppBar(
                title: Text('Test'),
              ),
            ),
          ),
        ),
      );

      logSuite.startRecording();
      await Future.delayed(const Duration(milliseconds: 500));
      logSuite.stopRecording();

      expect(logSuite.screenshotCapture._isRecording, false);
    });

    test('logs network requests', () async {
      logSuite.networkLogger.startLogging();
      final response = await logSuite.httpClient
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

      expect(response.statusCode, 200);
      expect(logSuite.networkLogger._log.isNotEmpty, true);
    });

    test('captures crash logs', () async {
      final error = 'Test Error';
      final stackTrace = 'Test Stack Trace';
      await logSuite.crashLogger._captureAndSaveCrashLog(error, stackTrace);

      final logs = await logSuite.crashLogger.getCrashLogs();
      expect(logs.isNotEmpty, true);
    });
  });
}
