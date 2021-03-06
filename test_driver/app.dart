import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:hear2learn/main_prod.dart' as app; // ignore: uri_does_not_exist

Future<void> main() async {
  // This line enables the extension
  enableFlutterDriverExtension();

  WidgetsApp.debugAllowBannerOverride = false;

  // Call the `main()` function of your app or call `runApp` with any widget you
  // are interested in testing.
  await app.main();
}

