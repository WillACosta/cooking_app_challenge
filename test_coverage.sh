# Generate `coverage/lcov.info` file
flutter test --coverage

# Generate HTML report
# Note: on macOS you need to have lcov installed on your system (`brew install lcov`) to use this:
genhtml coverage/lcov.info -o coverage/html

lcov --remove coverage/lcov.info
'lib/*/*.freezed.dart' 'lib/*/*.g.dart'
'lib/*/*.part.dart' 'lib/generated/*.dart'
'lib/generated/*.dart/*.dart' 'lib/modules/*/views/*' -o coverage/lcov.info

# Open the report
open coverage/html/index.html