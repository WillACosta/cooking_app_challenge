import 'package:logging/logging.dart';

enum AppLoggerLevels { severe, warning, info, config, fine }

class AppLogger {
  late Logger _logger;

  AppLogger(String sourceName) {
    _logger = Logger(sourceName);
  }

  void severe(String message, [Object? error, StackTrace? st]) =>
      _logger.severe(message, error, st);

  void warning(String message, [Object? error, StackTrace? st]) =>
      _logger.severe(message, error, st);

  void info(String message, [Object? error, StackTrace? st]) =>
      _logger.severe(message, error, st);

  void config(String message, [Object? error, StackTrace? st]) =>
      _logger.severe(message, error, st);

  void fine(String message, [Object? error, StackTrace? st]) =>
      _logger.severe(message, error, st);
}
