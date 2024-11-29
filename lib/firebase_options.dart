// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyABQFP6ZRWpBy2iYhMrDP1gm6H4fmPA2os',
    appId: '1:811374779287:web:954fa9d8c62d0298f342d2',
    messagingSenderId: '811374779287',
    projectId: 'atelier4-m-aitkika-iir5g-f2477',
    authDomain: 'atelier4-m-aitkika-iir5g-f2477.firebaseapp.com',
    storageBucket: 'atelier4-m-aitkika-iir5g-f2477.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBTA_U0CAHaM8ZRp2Jg-9bje2SjKMbXyYo',
    appId: '1:587737551921:android:0cb9e17efcb267aea53110',
    messagingSenderId: '587737551921',
    projectId: 'atelier4-p-messous-iir5g-12e08',
    storageBucket: 'atelier4-p-messous-iir5g-12e08.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDJQcu6B22tSw2Yfzk-gtuwIOJA6Dje-RM',
    appId: '1:811374779287:ios:ea523a687fb6eee5f342d2',
    messagingSenderId: '811374779287',
    projectId: 'atelier4-m-aitkika-iir5g-f2477',
    storageBucket: 'atelier4-m-aitkika-iir5g-f2477.firebasestorage.app',
    iosBundleId: 'com.example.produitsapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDJQcu6B22tSw2Yfzk-gtuwIOJA6Dje-RM',
    appId: '1:811374779287:ios:ea523a687fb6eee5f342d2',
    messagingSenderId: '811374779287',
    projectId: 'atelier4-m-aitkika-iir5g-f2477',
    storageBucket: 'atelier4-m-aitkika-iir5g-f2477.firebasestorage.app',
    iosBundleId: 'com.example.produitsapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyABQFP6ZRWpBy2iYhMrDP1gm6H4fmPA2os',
    appId: '1:811374779287:web:5807411d08f0168cf342d2',
    messagingSenderId: '811374779287',
    projectId: 'atelier4-m-aitkika-iir5g-f2477',
    authDomain: 'atelier4-m-aitkika-iir5g-f2477.firebaseapp.com',
    storageBucket: 'atelier4-m-aitkika-iir5g-f2477.firebasestorage.app',
  );
}