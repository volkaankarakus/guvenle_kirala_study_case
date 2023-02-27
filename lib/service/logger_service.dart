import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@lazySingleton
class LoggerService {
  late Logger _logger;

  LoggerService() {
    _logger = Logger(
      printer: PrettyPrinter(
        methodCount: 2,
        errorMethodCount: 8,
        lineLength: 120,
        colors: true,
        printEmojis: true,
        printTime: true,
      ),
      output: ConsoleOutput(),
      filter: DevelopmentFilter(),
    );
  }

  Logger get logger => _logger;
}