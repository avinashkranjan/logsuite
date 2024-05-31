import 'dart:async';
import 'dart:typed_data';
import 'package:screenshot/screenshot.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io';


class ScreenshotCapture {
  final ScreenshotController controller;
  ScreenshotCapture(this.controller);
  static Timer? _timer;


  Future<void> initialize() async {
    try {
      await Future.delayed(Duration(seconds: 1));


      _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) async {
        try {
          Uint8List? image = await controller.capture();
          if (image != null) {
            await saveImage(image);
          } else {
            print('Failed to capture screenshot. Image is null.');
          }
        } catch (e) {
          print('Error capturing screenshot: $e');
        }
      });
    } catch (e) {
      print('Error starting timer: $e');
    }


  }


  static Future<void> stop() async {
    _timer?.cancel();
    _timer = null;
    print('Screenshot capture stopped.');
  }


  static Future<void> saveImage(Uint8List image) async {
    try {
      // Get the application's documents directory
      final directory = await getApplicationDocumentsDirectory();
      Directory dir = Directory('/storage/emulated/0/Download');
      String fileName = 'screenshot_${DateTime.now().millisecondsSinceEpoch}.png';
      String filePath = join(dir.path, fileName);
      // Save the screenshot as a file
      File file = File(filePath);
      await file.writeAsBytes(image);
      print('Screenshot saved to $filePath');
    } catch (e) {
      print('Error saving screenshot: $e');
    }
  }
}

