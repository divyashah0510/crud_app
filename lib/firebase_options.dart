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
    apiKey: 'AIzaSyBRD7QPpZEu4s3z1hFmdqyNEeTyxeKIT2o',
    appId: '1:612677913576:web:aee97969879d9e6de9f25d',
    messagingSenderId: '612677913576',
    projectId: 'crud-d1184',
    authDomain: 'crud-d1184.firebaseapp.com',
    storageBucket: 'crud-d1184.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDZMt2OnsUcAZWweEbAw5AqGBO-45YTsfA',
    appId: '1:612677913576:android:6c2bcac0d5dfc0cde9f25d',
    messagingSenderId: '612677913576',
    projectId: 'crud-d1184',
    storageBucket: 'crud-d1184.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAhea_AbMY1P0l2wA_-wKh50d93485EBKc',
    appId: '1:612677913576:ios:e8185bdbaf601051e9f25d',
    messagingSenderId: '612677913576',
    projectId: 'crud-d1184',
    storageBucket: 'crud-d1184.appspot.com',
    iosBundleId: 'com.example.crudApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAhea_AbMY1P0l2wA_-wKh50d93485EBKc',
    appId: '1:612677913576:ios:616261d06296d3c9e9f25d',
    messagingSenderId: '612677913576',
    projectId: 'crud-d1184',
    storageBucket: 'crud-d1184.appspot.com',
    iosBundleId: 'com.example.crudApp.RunnerTests',
  );
}
