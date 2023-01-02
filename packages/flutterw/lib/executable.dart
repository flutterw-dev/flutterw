import 'dart:io';

import 'package:cli_wrapper/cli_wrapper.dart';

import 'src/config.dart';
import 'src/hook.dart';
import 'src/logger.dart';
import 'src/runner.dart';
import 'version.g.dart';

void main(List<String> args) {
  final hooks = {
    ...globalConfig.hooks,
    ...projectConfig.hooks,
  }.map<String, Hook>((key, value) {
    if (value is List) {
      return MapEntry(
          key,
          FlutterWrapperHook.fromScripts(
            name: key,
            scripts: value.cast(),
          ));
    } else {
      return MapEntry(
          key,
          FlutterWrapperHook.fromPackage(
              name: key,
              package: value,
              global: !projectConfig.hooks.containsKey(key)));
    }
  });
  var runner = FlutterWrapperRunner(hooks);
  initLogger(false);
  if (args.contains('--version')) {
    stderr.writeln('Flutterw $kPackageVersion');
  }
  runner.run(args).catchError((e, stack) {
    logError(e.toString());
    logError(stack.toString());
  });
}
