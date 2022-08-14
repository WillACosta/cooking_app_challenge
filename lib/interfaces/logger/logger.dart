// ignore_for_file: avoid_print

import 'package:logging/logging.dart';

void initLogger() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(
    (record) {
      dynamic e = record.error;

      print(
        '##${record.loggerName}:${record.level.name}## : ${record.message}{$e}',
      );
    },
  );

  Logger.root.info('Logger initialized.');
}
