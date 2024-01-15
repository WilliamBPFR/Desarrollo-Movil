import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tienda_app/views/buyers/main_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid ? await Firebase.initializeApp(
      options:FirebaseOptions(
          apiKey: 'AIzaSyCLw4TH1DnTiMk1rMZAuc4BKAfJ0WcFtoY',
          appId: '1:90698058405:android:95726d3765f4af6f119b4c',
          messagingSenderId: '90698058405',
          projectId: 'multi-store-app-e71a1',
          storageBucket: 'gs://multi-store-app-e71a1.appspot.com'
      )
  ) : Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        theme: ThemeData(
            fontFamily: 'Brand-Bold'
        ),
        home: MainScreen(),
        );
    }
}