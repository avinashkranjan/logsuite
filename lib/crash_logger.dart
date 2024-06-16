// lib/crash_logger.dart

import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class CrashLogger {
  CrashLogger() {
    FlutterError.onError = (FlutterErrorDetails details) async {
      FlutterError.presentError(details);
      await _captureAndSaveCrashLog(details);
    };
    Isolate.current.addErrorListener(RawReceivePort((dynamic pair) async {
      final List<dynamic> errorAndStacktrace = pair;
      await _captureAndSaveCrashLog(
          errorAndStacktrace[0], errorAndStacktrace[1]);
    }).sendPort);
  }

  Future<void> _captureAndSaveCrashLog(dynamic error,
      [dynamic stackTrace]) async {
    try {
      final directory = await getExternalStorageDirectory();
      if (directory == null) return;

      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final filePath = '${directory.path}/crash_log_$timestamp.txt';

      final file = File(filePath);
      final log = 'Error: $error\nStackTrace: $stackTrace';
      await file.writeAsString(log);
    } catch (e) {
      print('Error saving crash log: $e');
    }
  }

  Future<List<File>> getCrashLogs() async {
    final directory = await getExternalStorageDirectory();
    if (directory == null) return [];

    final logFiles = directory
        .listSync()
        .where((file) {
          return file.path.endsWith('.txt');
        })
        .map((file) => File(file.path))
        .toList();

    return logFiles;
  }
}
