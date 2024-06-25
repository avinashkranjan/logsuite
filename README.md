# LogSuite

LogSuite is a Flutter plugin designed to enhance your debugging and monitoring capabilities by capturing screenshots, recording crash logs, and logging network activity. This plugin helps developers ensure their applications run smoothly and provides detailed logs for troubleshooting. LogSuite follows best architectural practices, focusing on functionality and correctness.

<a href="https://pub.dev/packages/logsuite">
   <img src="https://forthebadge.com/images/badges/check-it-out.svg">
</a>

## Features

1. **Screenshot Capture**:
   - Automatically captures screenshots every 100ms and saves them to device storage.
   - Inspired by UxCam/UserExperior for capturing screenshots without explicit permission.

2. **Crash Log Recording**:
   - Automatically captures and records crash logs with relevant information when a crash occurs.
   - Saves crash logs to device storage and provides an API for retrieval.

3. **Network Log Capture**:
   - Intercepts and logs all network requests and responses.
   - Saves network logs to device storage and exposes an API for retrieval.

4. **Custom Log Capture**:
   - Allows developers to log custom messages and events for more detailed debugging.
   - Provides an API for saving and retrieving custom logs.

5. **Performance Monitoring**:
   - Monitors app performance metrics like CPU and memory usage.
   - Logs performance data to help identify bottlenecks and optimize the app.

## Architecture

LogSuite follows a modular architecture with a focus on clean code and maintainability. The plugin uses a combination of MVC and BLoC patterns to ensure a clear separation of concerns and to make the codebase easy to navigate and extend.

## Installation

To use this plugin, add `flutter_log_capture` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_log_capture: ^0.1.0
```

## Usage

### Initializing the Plugin

To initialize the plugin, call the `initialize` method in your `main` function:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_log_capture/flutter_log_capture.dart';

void main() {
  FlutterLogCapture.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LogSuite Demo',
      home: HomePage(),
    );
  }
}
```

### Sample Application

The sample application demonstrates the integration and usage of the plugin. It includes functionality for:

- Capturing screenshots manually.
- Triggering a crash to test crash log recording.
- Making a network request to test network log capture.
- Logging custom messages.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_log_capture/flutter_log_capture.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LogSuite Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Implement screenshot capture functionality
                FlutterLogCapture.captureScreenshot();
              },
              child: Text('Capture Screenshot'),
            ),
            ElevatedButton(
              onPressed: () {
                // Trigger a crash for demonstration
                throw Exception('Test crash');
              },
              child: Text('Cause Crash'),
            ),
            ElevatedButton(
              onPressed: () {
                // Make a network request for demonstration
                FlutterLogCapture.logNetworkRequest(
                  url: 'https://example.com',
                  method: 'GET',
                );
              },
              child: Text('Make Network Request'),
            ),
            ElevatedButton(
              onPressed: () {
                // Log a custom message
                FlutterLogCapture.logCustomMessage('Custom log message');
              },
              child: Text('Log Custom Message'),
            ),
          ],
        ),
      ),
    );
  }
}
```

## Capturing Screenshots

To capture screenshots every 100ms and save them to device storage, ensure the `ScreenshotCapture` class in the plugin is properly initialized and running.

## Recording Crash Logs

Crash logs are automatically captured using the `CrashLogRecorder` class. You can retrieve the crash logs through the provided API.

## Logging Network Activity

The `NetworkLogCapture` class intercepts and logs network requests and responses. These logs are saved to device storage and can be accessed via the API.

## Custom Log Capture

Use the `CustomLogCapture` class to log custom messages and events. This helps in detailed debugging and tracking specific actions within the app.

## Performance Monitoring

The `PerformanceMonitor` class logs performance metrics such as CPU and memory usage, providing insights into the app's performance and helping identify optimization areas.

## Contributing

We welcome contributions! Please see the [CONTRIBUTING.md](https://github.com/avinashkranjan/logsuite/blob/main/CONTRIBUTING.md) file for more details on how to get started.

## License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/avinashkranjan/logsuite/blob/main/LICENSE) file for more details.

## Contact

For any questions or concerns, please open an issue on GitHub or contact me at `ranjan.avinash@hotmail.com`.

Thank you for using LogSuite!

<hr>

<div align="center">
  <h2><img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Smilies/Red%20Heart.png" width="35" height="35">Our Contributors</h2>
  <h3>Thank you for contributing to our repository</h3>
  <img src="https://contrib.rocks/image?repo=avinashkranjan/logsuite">
  <h3>Show some ❤️ by starring this awesome repository!</h3>
</div>
