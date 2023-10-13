import 'package:flutter/material.dart';

class PreCacheImages {
  static Future<void> preCacheImages(BuildContext context) async {
    await Future.wait([
      precacheImage(const AssetImage('IndianClassical.png'), context),
      precacheImage(const AssetImage('IndianClassical-2.png'), context),
      precacheImage(const AssetImage('EDM.png'), context),
      precacheImage(const AssetImage('EDM-2.png'), context),
      precacheImage(const AssetImage('Jazz.png'), context),
      precacheImage(const AssetImage('Jazz-2.png'), context),
      precacheImage(const AssetImage('Retro.png'), context),
      precacheImage(const AssetImage('Retro-2.png'), context),
    ]);
  }
}
