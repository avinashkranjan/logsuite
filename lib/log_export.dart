import 'dart:convert';
import 'dart:io';

class LogExport {
  static void exportLogs(List<String> logs, String format, String filePath) {
    String output;

    switch (format) {
      case 'json':
        output = jsonEncode(logs);
        break;
      case 'csv':
        output = logs.join('\n');
        break;
      case 'text':
        output = logs.join('\n');
        break;
      default:
        throw UnsupportedError('Format not supported');
    }

    final file = File(filePath);
    file.writeAsStringSync(output);
  }
}
