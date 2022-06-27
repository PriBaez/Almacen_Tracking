// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:

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

  static final FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBns9JP1_MMe_1S5yK3bq3ERWsRZv5PWFY',
    appId: '1:808358541507:web:99f627300fc0f472ef4a76',
    messagingSenderId: '808358541507',
    projectId: 'trackapp-cb375',
    authDomain: 'trackapp-cb375.firebaseapp.com',
    storageBucket: 'trackapp-cb375.appspot.com',
  );

  static final FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6TGj6UV2hnb5FaayG0H3zXwDga_RO7yI',
    appId: '1:808358541507:android:6d56dbddab483a6def4a76',
    messagingSenderId: '808358541507',
    projectId: 'trackapp-cb375',
    storageBucket: 'trackapp-cb375.appspot.com',
  );

  static final FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDmdPmRICdBnWBLhZSIhxrGk8GIM0tvP3s',
    appId: '1:808358541507:ios:a904cfb1a1838aefef4a76',
    messagingSenderId: '808358541507',
    projectId: 'trackapp-cb375',
    storageBucket: 'trackapp-cb375.appspot.com',
    iosClientId: '808358541507-nejdf8k5q9be5vkq0gggs3tq8om2j9d4.apps.googleusercontent.com',
    iosBundleId: 'com.example.testproject',
  );

  static final FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDmdPmRICdBnWBLhZSIhxrGk8GIM0tvP3s',
    appId: '1:808358541507:ios:a904cfb1a1838aefef4a76',
    messagingSenderId: '808358541507',
    projectId: 'trackapp-cb375',
    storageBucket: 'trackapp-cb375.appspot.com',
    iosClientId: '808358541507-nejdf8k5q9be5vkq0gggs3tq8om2j9d4.apps.googleusercontent.com',
    iosBundleId: 'com.example.testproject',
  );
}