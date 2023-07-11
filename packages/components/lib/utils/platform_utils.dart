import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

/// A class that returns the platform on which the application is running
///
/// Source : https://stackoverflow.com/questions/58459483/unsupported-operation-platform-operatingsystem/75393239#75393239
class PlatformUtils {
  /// Whether the application is running on the mobile(android, IOS)
  static bool get isMobile {
    if (kIsWeb) {
      return false;
    } else {
      return Platform.isIOS || Platform.isAndroid;
    }
  }

  /// Whether the application is running on the desktop(Linux, Windows, MacOS, Fuchsia)
  static bool get isDesktop {
    if (kIsWeb) {
      return false;
    } else {
      return Platform.isLinux ||
          Platform.isFuchsia ||
          Platform.isWindows ||
          Platform.isMacOS;
    }
  }

  /// Whether the application is running on the web
  static bool get isWeb {
    return kIsWeb;
  }
}
