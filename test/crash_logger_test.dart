// test/crash_logger_test.dart

import 'dart:async';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:logsuite/crash_logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:mockito/mockito.dart';

class MockDirectory extends Mock implements Directory {}

void main() {
  group('CrashLogger', () {
    late CrashLogger crashLogger;

    setUp(() {
      crashLogger = CrashLogger();
    });

    test('captures and saves crash log on error', () async {
      final error = 'Test Error';
      final stackTrace = 'Test Stack Trace';
      await crashLogger._captureAndSaveCrashLog(error, stackTrace);

      final directory = await getExternalStorageDirectory();
      final files = directory
          ?.listSync()
          .where((file) => file.path.contains('crash_log'))
          .toList();

      expect(files?.isNotEmpty, true);
    });

    test('retrieves saved crash logs', () async {
      final error = 'Test Error';
      final stackTrace = 'Test Stack Trace';
      await crashLogger._captureAndSaveCrashLog(error, stackTrace);

      final logs = await crashLogger.getCrashLogs();
      expect(logs.isNotEmpty, true);
    });
  });
}
