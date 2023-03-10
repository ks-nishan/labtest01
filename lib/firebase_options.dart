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
    apiKey: 'AIzaSyDA4YuBLD6vBoJOzR_UsngrX0pAxI2ASw8',
    appId: '1:1091430912145:web:8f2ab9c74bbb39d30daf30',
    messagingSenderId: '1091430912145',
    projectId: 'labtestone-310f4',
    authDomain: 'labtestone-310f4.firebaseapp.com',
    storageBucket: 'labtestone-310f4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDm0lwWR_iLUqLT1QRblnndqg4cvXrTLUg',
    appId: '1:1091430912145:android:5649584edee580830daf30',
    messagingSenderId: '1091430912145',
    projectId: 'labtestone-310f4',
    storageBucket: 'labtestone-310f4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDQfJvGVEe_yM-GGFTB1qMf8K6G-csoPZ8',
    appId: '1:1091430912145:ios:ec7763fcb24ae1020daf30',
    messagingSenderId: '1091430912145',
    projectId: 'labtestone-310f4',
    storageBucket: 'labtestone-310f4.appspot.com',
    iosClientId: '1091430912145-h7q8fr7r6g4jq6t3s442uma3vnlrpj8j.apps.googleusercontent.com',
    iosBundleId: 'com.example.labtestOne',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDQfJvGVEe_yM-GGFTB1qMf8K6G-csoPZ8',
    appId: '1:1091430912145:ios:ec7763fcb24ae1020daf30',
    messagingSenderId: '1091430912145',
    projectId: 'labtestone-310f4',
    storageBucket: 'labtestone-310f4.appspot.com',
    iosClientId: '1091430912145-h7q8fr7r6g4jq6t3s442uma3vnlrpj8j.apps.googleusercontent.com',
    iosBundleId: 'com.example.labtestOne',
  );
}
