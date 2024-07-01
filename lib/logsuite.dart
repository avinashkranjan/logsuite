library logsuite;

export 'screenshot_capture.dart';
export 'network_logger.dart';
export 'crash_logger.dart';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'screenshot_capture.dart';
import 'network_logger.dart';
import 'crash_logger.dart';
import 'log_export.dart';

class LogSuite {
  final ScreenshotCapture screenshotCapture = ScreenshotCapture();
  final NetworkLogger networkLogger = NetworkLogger();
  final CrashLogger crashLogger = CrashLogger();
  List<String> _logs = [];

  void startRecording() {
    screenshotCapture.startRecording();
    networkLogger.startLogging();
  }

  void stopRecording() {
    screenshotCapture.stopRecording();
    networkLogger.stopLogging();
  }

  void addLog(String log) {
    _logs.add(log);
  }

  void exportLogs(String format, String filePath) {
    LogExport.exportLogs(_logs, format, filePath);
  }
  
  Widget wrapWithScreenshot(BuildContext context, Widget child) {
    return screenshotCapture.wrapWithScreenshot(context, child);
  }

  InterceptedClient get httpClient => networkLogger.httpClient;

  Future<List<File>> getCrashLogs() => crashLogger.getCrashLogs();

}
