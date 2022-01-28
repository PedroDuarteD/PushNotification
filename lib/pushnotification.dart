
import 'dart:async';
import 'package:flutter/services.dart';

class Pushnotification {
  static const MethodChannel _channel = MethodChannel('pushnotification');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static Future  notification_push(String titulo, String texto) async {
  await _channel.invokeMapMethod('notification',
      {"titulo" :titulo,"texto" :texto});

  }
}
