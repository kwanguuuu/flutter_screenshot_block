import 'dart:async';

import 'package:flutter/services.dart';

class ScreenshotBlock {
  static const MethodChannel _channel =
      const MethodChannel('screenshot_block');


  static Future enableScreenshot() async {
    _channel.invokeMethod("enableScreenshot");
  }
  static Future disableScreenshot() async {
    _channel.invokeMethod("disableScreenshot");
  }
}
