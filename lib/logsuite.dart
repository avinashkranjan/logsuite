library logsuite;

export 'screenshot_capture.dart';
export 'network_logger.dart';
export 'crash_logger.dart';
export 'user_activity_logger.dart';  // New feature

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'screenshot_capture.dart';
import 'network_logger.dart';
import 'crash_logger.dart';
import 'user_activity_logger.dart';  // New feature

class LogSuite {
  final ScreenshotCapture screenshotCapture = ScreenshotCapture();
  final NetworkLogger networkLogger = NetworkLogger();
  final CrashLogger crashLogger = CrashLogger();
  final UserActivityLogger userActivityLogger = UserActivityLogger(); // New feature

  /// Initializes the logging suite.
  void initialize() {
    screenshotCapture.initialize();
    networkLogger.initialize();
    crashLogger.initialize();
    userActivityLogger.initialize(); // New feature
  }

  /// Starts recording screenshots, network logs, and user activity.
  void startRecording() {
    screenshotCapture.startRecording();
    networkLogger.startLogging();
    userActivityLogger.startLogging(); // New feature
  }

  /// Stops recording screenshots, network logs, and user activity.
  void stopRecording() {
    screenshotCapture.stopRecording();
    networkLogger.stopLogging();
    userActivityLogger.stopLogging(); // New feature
  }

  /// Wraps a widget with screenshot capturing functionality.
  Widget wrapWithScreenshot(BuildContext context, Widget child) {
    return screenshotCapture.wrapWithScreenshot(context, child);
  }

  /// Returns the intercepted HTTP client for logging network requests.
  InterceptedClient get httpClient => networkLogger.httpClient;

  /// Retrieves crash logs.
  Future<List<File>> getCrashLogs() => crashLogger.getCrashLogs();

  /// Retrieves user activity logs. // New feature
  Future<List<File>> getUserActivityLogs() => userActivityLogger.getUserActivityLogs();
}

class UserActivityLogger {
  void initialize() {
    // Initialize user activity logger.
  }

  void startLogging() {
    // Start logging user activity.
  }

  void stopLogging() {
    // Stop logging user activity.
  }

  Future<List<File>> getUserActivityLogs() async {
    // Retrieve user activity logs.
    return [];
  }
}
