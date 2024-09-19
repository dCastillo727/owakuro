import 'package:owakuro/src/interfaces/owakuro_logger.dart';

class OwakuroLoggerImpl implements OwakuroLogger {
  const OwakuroLoggerImpl();

  @override
  void currentStkTrx() {
    print(StackTrace.current);
  }

  @override
  void error(String message) {
    print('error!!! $message');
  }

  @override
  void log(String message) {
    print('[log] $message');
  }
}
