// test/screenshot_capture_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:logsuite/screenshot_capture.dart';
import 'package:mockito/mockito.dart';
import 'package:screenshot/screenshot.dart';

class MockScreenshotController extends Mock implements ScreenshotController {}

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
      when(mockScreenshotController.capture()).thenAnswer((_) async => <int>[]);

      screenshotCapture.startRecording();
      await Future.delayed(Duration(milliseconds: 500));

      verify(mockScreenshotController.capture()).called(greaterThan(1));
      screenshotCapture.stopRecording();
    });

    test('stopRecording stops capturing screenshots', () async {
      when(mockScreenshotController.capture()).thenAnswer((_) async => <int>[]);

      screenshotCapture.startRecording();
      await Future.delayed(Duration(milliseconds: 500));
      screenshotCapture.stopRecording();
      await Future.delayed(Duration(milliseconds: 500));

      verify(mockScreenshotController.capture()).called(lessThan(10));
    });
  });
}
