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
    apiKey: 'AIzaSyBg7LjYk4FP70bXlO_k88VWtJqdBz4uSo0',
    appId: '1:820546610079:web:27622f16fce216620653aa',
    messagingSenderId: '820546610079',
    projectId: 'yemektarifi-73898',
    authDomain: 'yemektarifi-73898.firebaseapp.com',
    storageBucket: 'yemektarifi-73898.appspot.com',
    measurementId: 'G-32KG8QJE33',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5iFOgDZrbtN9Ch1kz0wjDtimvBizBYAI',
    appId: '1:820546610079:android:f7d5fdd0dc22fdb40653aa',
    messagingSenderId: '820546610079',
    projectId: 'yemektarifi-73898',
    storageBucket: 'yemektarifi-73898.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDnHqxqwbtKAoCwzEnY5xuUgRCKeIQbZlE',
    appId: '1:820546610079:ios:0486493f71a17e5e0653aa',
    messagingSenderId: '820546610079',
    projectId: 'yemektarifi-73898',
    storageBucket: 'yemektarifi-73898.appspot.com',
    iosBundleId: 'com.example.yemektarifi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDnHqxqwbtKAoCwzEnY5xuUgRCKeIQbZlE',
    appId: '1:820546610079:ios:7fa482b58a61b87c0653aa',
    messagingSenderId: '820546610079',
    projectId: 'yemektarifi-73898',
    storageBucket: 'yemektarifi-73898.appspot.com',
    iosBundleId: 'com.example.yemektarifi.RunnerTests',
  );
}
