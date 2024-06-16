// lib/network_logger.dart

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:http_interceptor/http_interceptor.dart';

class NetworkLogger {
  late final InterceptedClient httpClient;
  final List<String> _log = [];

  NetworkLogger() {
    final interceptor = LoggingInterceptor(logNetworkRequest);
    httpClient = InterceptedClient.build(interceptors: [interceptor]);
  }

  void startLogging() {
    _log.clear();
  }

  List<String> getLogs() {
    return _log;
  }

  void stopLogging() async {
    final directory = await getExternalStorageDirectory();
    if (directory == null) return;

    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final filePath = '${directory.path}/network_log_$timestamp.txt';

    final file = File(filePath);
    await file.writeAsString(_log.join('\n'));
  }

  void logNetworkRequest(String logEntry) {
    _log.add(logEntry);
  }
}

class LoggingInterceptor implements InterceptorContract {
  final void Function(String logEntry) logFunction;

  LoggingInterceptor(this.logFunction);

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    logFunction('Request: ${data.method} ${data.url}');
    logFunction('Headers: ${data.headers}');
    if (data.body != null) {
      logFunction('Body: ${data.body}');
    }
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    logFunction('Response: ${data.statusCode} ${data.url}');
    logFunction('Headers: ${data.headers}');
    logFunction('Body: ${data.body}');
    return data;
  }
}
