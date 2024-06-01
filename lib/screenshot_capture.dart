import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:screenshot/screenshot.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io';


import 'ScreenshotGallery.dart';


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
  static void showGallery(BuildContext context) async {
    List<String> screenshots = await getSavedScreenshots();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ScreenshotGallery(screenshotPaths: screenshots),
      ),
    );
  }


  static Future<void> stop() async {
    _timer?.cancel();
    _timer = null;
    print('Screenshot capture stopped.');
  }


  static Future<List<String>> getSavedScreenshots() async {
    try {
      Directory dir = Directory('/storage/emulated/0/Download/logsuite');
      List<FileSystemEntity> files = dir.listSync();
      List<String> screenshots = [];


      for (var file in files) {
        if (file is File && file.path.endsWith('.png')) {
          screenshots.add(file.path);
        }
      }


      return screenshots;
    } catch (e) {
      print('Error retrieving screenshots: $e');
      return [];
    }
  }


  static Future<void> saveImage(Uint8List image) async {
    try {
      Directory dir = Directory('/storage/emulated/0/Download/logsuite');
      if (!await dir.exists()) {
        await dir.create(recursive: true);
      }


      String fileName = 'log_${DateTime.now().millisecondsSinceEpoch}.png';
      String filePath = join(dir.path, fileName);


      File file = File(filePath);
      await file.writeAsBytes(image);
      print('Screenshot saved to $filePath');
    } catch (e) {
      print('Error saving screenshot: $e');
    }
  }
}



