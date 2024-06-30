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
    apiKey: 'AIzaSyCyuqGW-gKrJHyjmo6XOxpei7TjJbeotS0',
    appId: '1:1046354066910:web:13f5a18d6382e026b6f14f',
    messagingSenderId: '1046354066910',
    projectId: 'blocfirestore-e0a16',
    authDomain: 'blocfirestore-e0a16.firebaseapp.com',
    storageBucket: 'blocfirestore-e0a16.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAfVkBGc5cbzWzs3zvyItUjUhPVrUBkk3E',
    appId: '1:1046354066910:android:49a85a39f1eac0e2b6f14f',
    messagingSenderId: '1046354066910',
    projectId: 'blocfirestore-e0a16',
    storageBucket: 'blocfirestore-e0a16.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCGsQ6AcuItJAxN9tBcZUNC5RFeouX0eKg',
    appId: '1:1046354066910:ios:6d7312589231ace4b6f14f',
    messagingSenderId: '1046354066910',
    projectId: 'blocfirestore-e0a16',
    storageBucket: 'blocfirestore-e0a16.appspot.com',
    iosBundleId: 'com.bloc.blocfirestore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCGsQ6AcuItJAxN9tBcZUNC5RFeouX0eKg',
    appId: '1:1046354066910:ios:6d7312589231ace4b6f14f',
    messagingSenderId: '1046354066910',
    projectId: 'blocfirestore-e0a16',
    storageBucket: 'blocfirestore-e0a16.appspot.com',
    iosBundleId: 'com.bloc.blocfirestore',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCyuqGW-gKrJHyjmo6XOxpei7TjJbeotS0',
    appId: '1:1046354066910:web:060dd410db05d6efb6f14f',
    messagingSenderId: '1046354066910',
    projectId: 'blocfirestore-e0a16',
    authDomain: 'blocfirestore-e0a16.firebaseapp.com',
    storageBucket: 'blocfirestore-e0a16.appspot.com',
  );
}