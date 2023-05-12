import 'dart:io';

import 'package:feature_by_folder/src/initialize/failures.dart';

class FailuresImpl extends Failures {
  ///
  ///
  ///
  ///
  ///
  ///
  /// Command Not Available
  @override
  commandNotAvailable(String command) {
    /// Bold Text
    /// ANSI escape sequence for bold text
    const boldText = '\x1B[1m';

    /// Reset Text
    /// ANSI escape sequence to reset text formatting
    const resetText = '\x1B[0m';

    // Error Message
    final errorMessage = '''
"$command" command not available.

Start Feature by Folder:
$boldText> flutter pub run feature start
$resetText
Create new Feature:
$boldText> flutter pub run feature create <your_feature_name>
''';

    stdout.writeln(errorMessage);
  }

  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  ///
  @override
  featureAlreadyExist(String featureName) {
    //
    final errorMessage = '''
feature "$featureName" already exist.
''';

    stdout.writeln(errorMessage);
  }

  ///
}
