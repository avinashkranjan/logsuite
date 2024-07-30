import Footer from "@/components/ui/Footer";
import Navbar from "@/components/ui/Navbar";
import Head from "next/head";

export default function Home() {
  return (
    <div className="bg-gray-100 text-gray-800 top-52 mt-50 dark:bg-gray-900 ">
      <Navbar />
      <main className="p-20 mt-50 top-50 mx-auto bg-white dark:bg-black dark:text-white shadow-lg max-w-3xl">
        <p>
          LogSuite is a Flutter plugin designed to capture screenshots every
          100ms, record crash logs, and log network activity. This plugin helps
          developers monitor and debug their applications efficiently by
          providing comprehensive logging capabilities. The plugin follows good
          architectural practices and focuses on functionality and correctness.
        </p>
        <h2 className=" dark:text-slate-100 text-blue-500 mt-4">Features</h2>
        <ol className="list-decimal pl-5">
          <li>
            <strong>Screenshot Capture:</strong>
            <ul className="list-disc pl-5">
              <li>
                Automatically captures screenshots every 100ms and saves them to
                device storage.
              </li>
              <li>
                Inspired by UxCam/UserExperior for capturing screenshots without
                explicit permission.
              </li>
            </ul>
          </li>
          <li>
            <strong>Crash Log Recording:</strong>
            <ul className="list-disc pl-5">
              <li>
                Automatically captures and records crash logs with relevant
                information when a crash occurs.
              </li>
              <li>
                Saves crash logs to device storage and provides an API for
                retrieval.
              </li>
            </ul>
          </li>
          <li>
            <strong>Network Log Capture:</strong>
            <ul className="list-disc pl-5">
              <li>Intercepts and logs all network requests and responses.</li>
              <li>
                Saves network logs to device storage and exposes an API for
                retrieval.
              </li>
            </ul>
          </li>
        </ol>
        <h2 className="text-blue-500 dark:text-slate-100  mt-4">
          Architecture
        </h2>
        <p>
          LogSuite follows a modular architecture with a focus on clean code and
          maintainability. The plugin uses a combination of MVC and BLoC
          patterns to ensure a clear separation of concerns and to make the
          codebase easy to navigate and extend.
        </p>
        <h2 className="text-blue-500 mt-4 dark:text-slate-100 ">
          Installation
        </h2>
        <p className="dark:bg-gray-800 dark:text-gray-300">
          To use this plugin, add{" "}
          <code className="bg-gray-200 dark:bg-black dark:text-gray-300 px-2 py-1 rounded">
            flutter_log_capture
          </code>{" "}
          as a dependency in your{" "}
          <code className="bg-gray-200 dark:bg-black dark:text-gray-300 px-2 py-1 rounded">
            pubspec.yaml
          </code>{" "}
          file:
        </p>
        <pre className="bg-gray-200 p-4 border-l-4 dark:bg-gray-700 dark:text-white border-blue-500 overflow-x-auto">
          <code>
            {`dependencies:
              flutter:
                sdk: flutter
              flutter_log_capture: ^0.1.0`}
          </code>
        </pre>
        <h2 className="text-blue-500 mt-4 ">Usage</h2>
        <h3 className="text-blue-500 mt-2 ">Initializing the Plugin</h3>
        <p>
          To initialize the plugin, call the{" "}
          <code className="bg-gray-200 dark:bg-black dark:text-gray-300 px-2 py-1 rounded">
            initialize
          </code>{" "}
          method in your{" "}
          <code className="bg-gray-200 dark:bg-black dark:text-gray-300 px-2 py-1 rounded">
            main
          </code>{" "}
          function:
        </p>
        <pre className="bg-gray-200 p-4 border-l-4 border-blue-500 dark:bg-gray-700 dark:text-white overflow-x-auto">
          <code>
            {`import 'package:flutter/material.dart';
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
              }`}
          </code>
        </pre>
        <h3 className="text-blue-500 mt-2">Sample Application</h3>
        <p>
          The sample application demonstrates the integration and usage of the
          plugin. It includes functionality for:
        </p>
        <ul className="list-disc pl-5">
          <li>Capturing screenshots manually.</li>
          <li>Triggering a crash to test crash log recording.</li>
          <li>Making a network request to test network log capture.</li>
        </ul>
        <p>
          <code className="bg-gray-200 px-2 py-1 dark:bg-black dark:text-gray-300 rounded">
            HomePage Widget
          </code>
        </p>
        <pre className="bg-gray-200 p-4 border-l-4 dark:bg-gray-700 dark:text-white border-blue-500 overflow-x-auto">
          <code>
            {`import 'package:flutter/material.dart';

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
              }`}
          </code>
        </pre>
        <h3 className="text-blue-500 mt-2">Capturing Screenshots</h3>
        <p>
          To capture screenshots every 100ms and save them to device storage,
          the ScreenshotCapture class in the plugin handles the functionality.
          Ensure it is properly initialized.
        </p>
        <h3 className="text-blue-500 mt-2">Recording Crash Logs</h3>
        <p>
          Crash logs are automatically captured using the CrashLogRecorder
          class. You can retrieve the crash logs through the provided API.
        </p>
        <h3 className="text-blue-500 mt-2">Logging Network Activity</h3>
        <p>
          The NetworkLogCapture class intercepts and logs network requests and
          responses. These logs are saved to device storage and can be accessed
          via the API.
        </p>
        <h2 className="text-blue-500 mt-4">Contributing</h2>
        <p>
          We welcome contributions! Please see the{" "}
          <a
            href="https://github.com/avinashkranjan/logsuite/blob/main/CONTRIBUTING.md"
            className="text-blue-500 hover:underline"
          >
            CONTRIBUTING.md
          </a>{" "}
          file for more details on how to get started.
        </p>
        <h2 className="text-blue-500 mt-4">License</h2>
        <p>
          This project is licensed under the MIT License. See the{" "}
          <a
            href="https://github.com/avinashkranjan/logsuite/blob/main/LICENSE"
            className="text-blue-500 hover:underline"
          >
            LICENSE
          </a>{" "}
          file for more details.
        </p>
        <h2 className="text-blue-500 mt-4">Contact</h2>
        <p>
          For any questions or concerns, please open an issue on GitHub or
          contact me at{" "}
          <code className="bg-gray-200 dark:bg-black dark:text-gray-300 px-2 py-1 rounded">
            ranjan.avinash@hotmail.com
          </code>
          .
        </p>
        <p>Thank you for using LogSuite!</p>
        <div className="flex justify-center space-x-4 mt-4">
          <button className="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600">
            Capture Screenshot
          </button>
          <button className="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600">
            Cause Crash
          </button>
          <button className="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600">
            Make Network Request
          </button>
        </div>
      </main>
      <Footer />
    </div>
  );
}
