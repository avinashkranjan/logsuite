// lib/screenshot_capture.dart

import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';

class ScreenshotCapture {
  late ScreenshotController screenshotController;
  Timer? _timer;
  bool _isRecording = false;

  ScreenshotCapture() {
    screenshotController = ScreenshotController();
  }

  Future<void> startRecording() async {
    if (_isRecording) return;
    _isRecording = true;

    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) async {
      if (_isRecording) {
        await _captureAndSaveScreenshot();
      } else {
        timer.cancel();
      }
    });
  }

  void stopRecording() {
    _isRecording = false;
    _timer?.cancel();
  }

  Future<void> _captureAndSaveScreenshot() async {
    try {
      final image = await screenshotController.capture();
      if (image == null) return;

      final directory = await getExternalStorageDirectory();
      if (directory == null) return;

      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final filePath = '${directory.path}/screenshot_$timestamp.png';

      final file = File(filePath);
      await file.writeAsBytes(image);
    } catch (e) {
      debugPrint('Error capturing screenshot: $e');
    }
  }

  Widget wrapWithScreenshot(BuildContext context, Widget child) {
    return Screenshot(
      controller: screenshotController,
      child: child,
    );
  }
}
