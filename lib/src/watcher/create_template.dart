import 'dart:io';

import 'package:feature/src/initialize/template.dart';
import 'package:feature/src/watcher/failures_impl.dart';

import '../utils/directories.dart';
import '../utils/path.dart';

class CreateTemplate extends Template {
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
  ///
  /// Create Feature
  @override
  createFeature(String featureName) {
    Directory(featurePath).createSync(recursive: true);

    final featureDirectory = Directory('$featurePath/$featureName');

    try {
      if (!featureDirectory.existsSync()) {
        featureDirectory.createSync();

        for (var dir in Directories.createFeatureDirectories) {
          final directory = Directory('${featureDirectory.path}/$dir');
          directory.createSync();
        }
      } else {
        // Failure
        /// Feature Already Exist
        FailuresImpl().featureAlreadyExist(featureName);
      }
    } catch (e) {
      stdout.writeln(e);
    }
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
  ///
  /// Start Feature by Folder
  @override
  startFeature() {
    for (final dir in Directories.startDirectories) {
      final directory = Directory('$libPath/$dir');

      directory.create();
    }
  }
}
