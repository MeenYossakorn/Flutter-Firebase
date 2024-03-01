// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDKzb0dMjtVRkBwm_9dlCJrjWTBqEmbV2g',
    appId: '1:251300356886:web:0bdcdae2b71fb62dfb6637',
    messagingSenderId: '251300356886',
    projectId: 'flutterauthen-5a297',
    authDomain: 'flutterauthen-5a297.firebaseapp.com',
    storageBucket: 'flutterauthen-5a297.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAh_8lIUOHac9Rurnqqe7bt0PdvoRihgVE',
    appId: '1:251300356886:android:f5eeb669de071b9efb6637',
    messagingSenderId: '251300356886',
    projectId: 'flutterauthen-5a297',
    storageBucket: 'flutterauthen-5a297.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD5jM-M5Um7UIud1ADhJ6GWGeegHJlNe6g',
    appId: '1:251300356886:ios:2061331c7cb8a764fb6637',
    messagingSenderId: '251300356886',
    projectId: 'flutterauthen-5a297',
    storageBucket: 'flutterauthen-5a297.appspot.com',
    iosBundleId: 'com.example.onboardingScreen',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD5jM-M5Um7UIud1ADhJ6GWGeegHJlNe6g',
    appId: '1:251300356886:ios:cba004c377253bc6fb6637',
    messagingSenderId: '251300356886',
    projectId: 'flutterauthen-5a297',
    storageBucket: 'flutterauthen-5a297.appspot.com',
    iosBundleId: 'com.example.onboardingScreen.RunnerTests',
  );
}
