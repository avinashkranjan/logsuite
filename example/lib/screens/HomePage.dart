import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logsuite/screenshot_capture.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  bool _isRequestingPermission = false;
  ScreenshotController screenshotController = ScreenshotController();
  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: screenshotController,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Log Capture Demo'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    ScreenshotCapture(screenshotController).initialize();
                  },
                  child: Text('Start Capturing Screenshots'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    ScreenshotCapture.stop();
                  },
                  child: Text('Stop Capturing Screenshots'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Button to cause a crash (for demonstration purposes)
                    throw Exception('Test crash');
                  },
                  child: Text('Cause Crash'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Placeholder for network request action
                  },
                  child: Text('Make Network Request'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
/*
 Future<void> _handleScreenshotCapture() async {
   if (_isRequestingPermission) return;


   setState(() {
     _isRequestingPermission = true;
   });


   try {
     if (await _requestPermissions()) {
       ScreenshotCapture.initialize();
     } else {
       _showPermissionDeniedDialog();
     }
   } finally {
     setState(() {
       _isRequestingPermission = false;
     });
   }
 }


 Future<bool> _requestPermissions() async {
   var status = await Permission.storage.status;
   if (!status.isGranted) {
     status = await Permission.storage.request();
   }
   return status.isGranted;
 }


 void _showPermissionDeniedDialog() {
   showDialog(
     context: context,
     builder: (BuildContext context) {
       return AlertDialog(
         title: Text('Permission Denied'),
         content: Text('Storage permission is required to capture screenshots.'),
         actions: [
           TextButton(
             onPressed: () {
               Navigator.of(context).pop();
             },
             child: Text('OK'),
           ),
         ],
       );
     },
   );
 }*/
}

