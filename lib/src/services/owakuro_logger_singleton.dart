import 'package:owakuro/owakuro.dart';

class OwakuroLoggerSingleton {
  static final OwakuroLoggerSingleton _instance = OwakuroLoggerSingleton._internal();
  factory OwakuroLoggerSingleton() => _instance;
  OwakuroLoggerSingleton._internal();

  OwakuroLogger? _logger;

  OwakuroLogger get logger => _logger ??= OwakuroLoggerImpl();

  void setLogger(OwakuroLogger logger) => _logger = logger;

  bool get hasLogger => _logger != null;
}