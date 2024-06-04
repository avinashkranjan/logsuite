# LogSuite

LogSuite is a Flutter plugin designed to capture screenshots every 100ms, record crash logs, and log network activity. This plugin helps developers monitor and debug their applications efficiently by providing comprehensive logging capabilities. The plugin follows good architectural practices and focuses on functionality and correctness.

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

# Usage

## Initializing the Plugin
To initialize the plugin, call the `initialize` method in your `main` function:

```
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

## Sample Application

The sample application demonstrates the integration and usage of the plugin. It includes functionality for:

- Capturing screenshots manually.
- Triggering a crash to test crash log recording.
- Making a network request to test network log capture.

`HomePage Widget`
```
import 'package:flutter/material.dart';

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
              },
              child: Text('Make Network Request'),
            ),
          ],
        ),
      ),
    );
  }
}
```

## Capturing Screenshots

To capture screenshots every 100ms and save them to device storage, the ScreenshotCapture class in the plugin handles the functionality. Ensure it is properly initialized.

## Recording Crash Logs

Crash logs are automatically captured using the CrashLogRecorder class. You can retrieve the crash logs through the provided API.

## Logging Network Activity

The NetworkLogCapture class intercepts and logs network requests and responses. These logs are saved to device storage and can be accessed via the API.

## Contributing

We welcome contributions! Please see the [CONTRIBUTING.md](https://github.com/avinashkranjan/logsuite/blob/main/CONTRIBUTING.md) file for more details on how to get started.

## License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/avinashkranjan/logsuite/blob/main/LICENSE) file for more details.

## Contact

For any questions or concerns, please open an issue on GitHub or contact me at `ranjan.avinash@hotmail.com`.

Thank you for using LogSuite!


<hr>

<div>
  <h2 align = "center"><img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Smilies/Red%20Heart.png" width="35" height="35">Our Contributors</h2>
  <div align = "center">
 <h3>Thank you for contributing to our repository</h3>

![Contributors](https://contrib.rocks/image?repo=avinashkranjan/logsuite)

### Show some ❤️ by starring this awesome repository!

</div>
