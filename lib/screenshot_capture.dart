import 'dart:async';
import 'package:screenshot/screenshot.dart';

class ScreenshotCapture {
  static void initialize() {
    ScreenshotController controller = ScreenshotController();
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      controller.capture().then((image) {
        print(image);
      });
    });
  }
}
