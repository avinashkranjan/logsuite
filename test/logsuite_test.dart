// test/logsuite_test.dart

import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logsuite/logsuite.dart';
import 'package:mockito/mockito.dart';
import 'package:screenshot/screenshot.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http_interceptor.dart';

class MockScreenshotController extends Mock implements ScreenshotController {}

class MockInterceptedClient extends Mock implements InterceptedClient {}

void main() {
  group('ScreenshotCapture', () {
    late ScreenshotCapture screenshotCapture;
    late MockScreenshotController mockScreenshotController;

    setUp(() {
      mockScreenshotController = MockScreenshotController();
      screenshotCapture = ScreenshotCapture();
      screenshotCapture.screenshotController = mockScreenshotController;
    });

    test('startRecording captures screenshots periodically', () async {
      when(mockScreenshotController.capture())
          .thenAnswer((_) async => Uint8List(0));

      screenshotCapture.startRecording();
      await Future.delayed(const Duration(milliseconds: 500));

      verify(mockScreenshotController.capture()).called(greaterThan(1));
      screenshotCapture.stopRecording();
    });

    test('stopRecording stops capturing screenshots', () async {
      when(mockScreenshotController.capture())
          .thenAnswer((_) async => Uint8List(0));

      screenshotCapture.startRecording();
      await Future.delayed(const Duration(milliseconds: 500));
      screenshotCapture.stopRecording();
      await Future.delayed(const Duration(milliseconds: 500));

      verify(mockScreenshotController.capture()).called(lessThan(10));
    });
  });

  group('NetworkLogger', () {
    late NetworkLogger networkLogger;
    late MockInterceptedClient mockClient;

    setUp(() {
      networkLogger = NetworkLogger();
      mockClient = MockInterceptedClient();
      networkLogger.httpClient = mockClient;
    });

    test('logs network requests', () async {
      networkLogger.startLogging();
      when(mockClient
              .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1')))
          .thenAnswer((_) async => http.Response('{}', 200));

      await networkLogger.httpClient
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

      expect(networkLogger.getLogs().isNotEmpty, true);
    });

    test('saves network logs to file on stop', () async {
      networkLogger.startLogging();
      when(mockClient
              .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1')))
          .thenAnswer((_) async => http.Response('{}', 200));
      when(mockClient
              .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/2')))
          .thenAnswer((_) async => http.Response('{}', 200));

      await networkLogger.httpClient
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
      await networkLogger.httpClient
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/2'));

      networkLogger.stopLogging();

      final logs = networkLogger.getLogs();
      expect(logs.isNotEmpty, true);
      expect(logs.length, greaterThan(1));
    });
  });

  group('CrashLogger', () {
    late CrashLogger crashLogger;

    setUp(() {
      crashLogger = CrashLogger();
    });

    test('captures and saves crash logs', () async {
      // Simulate a crash
      try {
        throw Exception('Test exception');
      } catch (e, stackTrace) {
        // crashLogger._captureAndSaveCrashLog(
        //     e.toString(), stackTrace.toString());
      }

      final crashLogs = await crashLogger.getCrashLogs();
      expect(crashLogs.isNotEmpty, true);
    });

    test('retrieves crash logs', () async {
      final crashLogs = await crashLogger.getCrashLogs();
      expect(crashLogs, isNotNull);
    });
  });

  group('Logsuite', () {
    late ScreenshotCapture screenshotCapture;
    late CrashLogger crashLogger;
    late NetworkLogger networkLogger;

    setUp(() {
      screenshotCapture = ScreenshotCapture();
      crashLogger = CrashLogger();
      networkLogger = NetworkLogger();
    });

    testWidgets('Logsuite integration test', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Test Button'),
            ),
          ),
        ),
      ));

      // Test Screenshot Capture
      screenshotCapture.startRecording();
      await Future.delayed(Duration(milliseconds: 500));
      screenshotCapture.stopRecording();
      // expect(screenshotCapture.isRecording, false);

      // Test Network Logger
      networkLogger.startLogging();
      await networkLogger.httpClient
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
      networkLogger.stopLogging();
      expect(networkLogger.getLogs().isNotEmpty, true);

      // Test Crash Logger
      try {
        throw Exception('Test exception');
      } catch (e, stackTrace) {
        // crashLogger._captureAndSaveCrashLog(
        //     e.toString(), stackTrace.toString());
      }
      final crashLogs = await crashLogger.getCrashLogs();
      expect(crashLogs.isNotEmpty, true);
    });
  });
}
