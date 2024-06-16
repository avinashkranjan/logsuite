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

class LogSuite {
  final ScreenshotCapture screenshotCapture = ScreenshotCapture();
  final NetworkLogger networkLogger = NetworkLogger();
  final CrashLogger crashLogger = CrashLogger();

  void startRecording() {
    screenshotCapture.startRecording();
    networkLogger.startLogging();
  }

  void stopRecording() {
    screenshotCapture.stopRecording();
    networkLogger.stopLogging();
  }

  Widget wrapWithScreenshot(BuildContext context, Widget child) {
    return screenshotCapture.wrapWithScreenshot(context, child);
  }

  InterceptedClient get httpClient => networkLogger.httpClient;

  Future<List<File>> getCrashLogs() => crashLogger.getCrashLogs();
}
