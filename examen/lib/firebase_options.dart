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
    apiKey: 'AIzaSyBvKBqflDYVz_h4h9GWqNBvI7HRDD_BJzc',
    appId: '1:569726710607:web:433da972299c682eabcb3a',
    messagingSenderId: '569726710607',
    projectId: 'examenu2-ded2a',
    authDomain: 'examenu2-ded2a.firebaseapp.com',
    storageBucket: 'examenu2-ded2a.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyATXH2Q4sD_Wa2v9JlR9GKuu9qfdEJ6BzQ',
    appId: '1:569726710607:android:6236cf4975d65c8aabcb3a',
    messagingSenderId: '569726710607',
    projectId: 'examenu2-ded2a',
    storageBucket: 'examenu2-ded2a.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAt17ekR2rII59J5r1r-QFi-NxVSrD2Bd0',
    appId: '1:569726710607:ios:dcd036321473f7f6abcb3a',
    messagingSenderId: '569726710607',
    projectId: 'examenu2-ded2a',
    storageBucket: 'examenu2-ded2a.firebasestorage.app',
    iosBundleId: 'com.example.examen',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAt17ekR2rII59J5r1r-QFi-NxVSrD2Bd0',
    appId: '1:569726710607:ios:dcd036321473f7f6abcb3a',
    messagingSenderId: '569726710607',
    projectId: 'examenu2-ded2a',
    storageBucket: 'examenu2-ded2a.firebasestorage.app',
    iosBundleId: 'com.example.examen',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBvKBqflDYVz_h4h9GWqNBvI7HRDD_BJzc',
    appId: '1:569726710607:web:9c76432f985b12daabcb3a',
    messagingSenderId: '569726710607',
    projectId: 'examenu2-ded2a',
    authDomain: 'examenu2-ded2a.firebaseapp.com',
    storageBucket: 'examenu2-ded2a.firebasestorage.app',
  );
}
