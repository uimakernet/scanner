import 'dart:async';

import 'package:flutter/services.dart';

class BarcodeScanner {
  static const CameraAccessDenied = 'PERMISSION_NOT_GRANTED';
  static const MethodChannel _channel =
      const MethodChannel('com.uimakernet.scanner');
  static Future<String> scan() async => await _channel.invokeMethod('scan');
}
