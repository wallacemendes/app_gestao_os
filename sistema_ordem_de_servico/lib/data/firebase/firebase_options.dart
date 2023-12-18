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
    apiKey: 'AIzaSyCPXIGsa1uQDuJqzhE-4zIuEQyEbQaO1Wo',
    appId: '1:432482153211:web:3c33edc2c4a764d35db65e',
    messagingSenderId: '432482153211',
    projectId: 'gerenciador-ordem-servicos',
    authDomain: 'gerenciador-ordem-servicos.firebaseapp.com',
    databaseURL: 'https://gerenciador-ordem-servicos-default-rtdb.firebaseio.com',
    storageBucket: 'gerenciador-ordem-servicos.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDnBkrsf_h2UqlkxjuhFsriOjA5UdVHG8E',
    appId: '1:432482153211:android:fa38de563ccd09535db65e',
    messagingSenderId: '432482153211',
    projectId: 'gerenciador-ordem-servicos',
    databaseURL: 'https://gerenciador-ordem-servicos-default-rtdb.firebaseio.com',
    storageBucket: 'gerenciador-ordem-servicos.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCG5N6p1I1clK2j63cSA_UVVLZkjaYeFyM',
    appId: '1:432482153211:ios:cc1d40778443bb735db65e',
    messagingSenderId: '432482153211',
    projectId: 'gerenciador-ordem-servicos',
    databaseURL: 'https://gerenciador-ordem-servicos-default-rtdb.firebaseio.com',
    storageBucket: 'gerenciador-ordem-servicos.appspot.com',
    iosClientId: '432482153211-37d08gn2045h53djfmaquh452e3273e6.apps.googleusercontent.com',
    iosBundleId: 'com.example.sistemaOrdemDeServico',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCG5N6p1I1clK2j63cSA_UVVLZkjaYeFyM',
    appId: '1:432482153211:ios:41730815f4316a1b5db65e',
    messagingSenderId: '432482153211',
    projectId: 'gerenciador-ordem-servicos',
    databaseURL: 'https://gerenciador-ordem-servicos-default-rtdb.firebaseio.com',
    storageBucket: 'gerenciador-ordem-servicos.appspot.com',
    iosClientId: '432482153211-1ldf0c5ijdgh8u0uocao2iml5a9e8k3u.apps.googleusercontent.com',
    iosBundleId: 'com.example.sistemaOrdemDeServico.RunnerTests',
  );
}
