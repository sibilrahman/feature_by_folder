import 'dart:io';

import 'package:args/args.dart';
import 'package:feature/src/watcher/create_template.dart';
import 'package:feature/src/watcher/failures_impl.dart';

void main(List<String> arguments) {
  final parser = ArgParser();

  parser.addCommand('start');
  parser.addCommand('create');

  final argResults = parser.parse(arguments);
  final command = argResults.command;

  if (command != null) {
    ///
    ///
    ///
    ///
    ///
    ///
    switch (command.name) {
      case 'start':
        {
          CreateTemplate().startFeature();
        }
        break;
      case 'create':
        {
          // print(command.arguments.first);
          final featureName = (command.arguments.first);
          CreateTemplate().createFeature(featureName);
        }
        break;
    }

    ///
    ///
    ///
    ///
    ///
    ///
    ///
    ///
    ///
    ///
    // if (command.name == 'create') {
    //   stdout.writeln(command.arguments.first);

    //   final folderName = command.arguments.first;

    //   final libDirectory = Directory('ABC/$folderName');
    //   // final newFolder = Directory('${libDirectory.path}/$folderName');
    //   // newFolder.createSync();
    //   libDirectory.createSync();

    //   // stdout.writeln('Folder created: ${libDirectory.path}');
    // } else {
    //   stdout.writeln('Unknown command');
    // }
    ///
    ///
    ///
    ///
    ///
  } else {
    //
    //
    /// Entered arg
    final arg = argResults.rest.first;
    //
    //
    /// Command Not Available Failure
    FailuresImpl().commandNotAvailable(arg);
  }
}
