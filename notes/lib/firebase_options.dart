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
    apiKey: 'AIzaSyB56fVH5yRGbGHhKYPHbnkRvVHyve3nMts',
    appId: '1:242244284205:web:948fba50520868f6b76da4',
    messagingSenderId: '242244284205',
    projectId: 'albert-notes',
    authDomain: 'albert-notes.firebaseapp.com',
    storageBucket: 'albert-notes.appspot.com',
    measurementId: 'G-Q87Y0PH7QK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDEkVAJ7GQ8HZowQKs8qjQS3dg6z-Tjpa8',
    appId: '1:242244284205:android:b7172e46b72dbc24b76da4',
    messagingSenderId: '242244284205',
    projectId: 'albert-notes',
    storageBucket: 'albert-notes.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAdZx9tpEGCQX6t4ifaO3X0grdFCcvfv0E',
    appId: '1:242244284205:ios:130fee9a941a0973b76da4',
    messagingSenderId: '242244284205',
    projectId: 'albert-notes',
    storageBucket: 'albert-notes.appspot.com',
    iosClientId: '242244284205-p3gttpnct080fgflf8bs318pi9ca65iv.apps.googleusercontent.com',
    iosBundleId: 'com.hello.notes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAdZx9tpEGCQX6t4ifaO3X0grdFCcvfv0E',
    appId: '1:242244284205:ios:f4519db96fb53755b76da4',
    messagingSenderId: '242244284205',
    projectId: 'albert-notes',
    storageBucket: 'albert-notes.appspot.com',
    iosClientId: '242244284205-9cnrk200dv2gakt00gtl5gm4lmq5cl64.apps.googleusercontent.com',
    iosBundleId: 'com.hello.notes.RunnerTests',
  );
}
