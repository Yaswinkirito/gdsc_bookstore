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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA8FlDDNI4BVIF7sv-HYb9VBp6AcUJ8jt0',
    appId: '1:1070969743533:web:786475e50fab6ad66a3e24',
    messagingSenderId: '1070969743533',
    projectId: 'book-store-7e39e',
    authDomain: 'book-store-7e39e.firebaseapp.com',
    storageBucket: 'book-store-7e39e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCbRUBQ9Jsfo3L8-lhjvyCgtO3rLXEncAE',
    appId: '1:1070969743533:android:a30231083ceb4d9b6a3e24',
    messagingSenderId: '1070969743533',
    projectId: 'book-store-7e39e',
    storageBucket: 'book-store-7e39e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAoYAJiVivmASmA6U33g53QalswwR6V-ic',
    appId: '1:1070969743533:ios:51ab413e0d03adb16a3e24',
    messagingSenderId: '1070969743533',
    projectId: 'book-store-7e39e',
    storageBucket: 'book-store-7e39e.appspot.com',
    iosClientId: '1070969743533-onvpu0nodpq4knm3tnc9hir3q63t9hp1.apps.googleusercontent.com',
    iosBundleId: 'com.example.gdscBookStore',
  );
}