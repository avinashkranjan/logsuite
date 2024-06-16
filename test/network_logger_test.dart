// test/network_logger_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:logsuite/network_logger.dart';
import 'package:http_interceptor/http_interceptor.dart';

void main() {
  group('NetworkLogger', () {
    late NetworkLogger networkLogger;
    late InterceptedClient client;

    setUp(() {
      networkLogger = NetworkLogger();
      client = networkLogger.httpClient;
    });

    test('logs network requests', () async {
      networkLogger.startLogging();
      await client
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

      expect(networkLogger._log.isNotEmpty, true);
    });

    test('saves network logs to file on stop', () async {
      networkLogger.startLogging();
      await client
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
      await client
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/2'));

      networkLogger.stopLogging();

      final logs = networkLogger._log;
      expect(logs.isNotEmpty, true);
      expect(logs.length, greaterThan(1));
    });
  });
}
