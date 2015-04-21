// Copyright (c) 2014, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

library stagehand.appengineapp;

import 'console_appengine_data.dart';
import '../stagehand.dart';
import '../src/common.dart';

/**
 * A generator for a hello world AppEngine application.
 */
class ConsoleAppEngineGenerator extends DefaultGenerator {
  ConsoleAppEngineGenerator() : super('console-appengine',
          'AppEngine Application', 'A simple App Engine application.',
          categories: const ['dart', 'appengine', 'server']) {
    for (TemplateFile file in decodeConcatenatedData(data)) {
      addTemplateFile(file);
    }

    setEntrypoint(getFile('bin/server.dart'));
  }

  String getInstallInstructions() => "${super.getInstallInstructions()}\n"
      "run your app using 'gcloud preview app run app.yaml'";
}
