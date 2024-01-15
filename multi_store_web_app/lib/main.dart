import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:multi_store_web_app/views/main_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: kIsWeb || Platform.isAndroid ? FirebaseOptions(
          apiKey: "AIzaSyAgHYg1r6Cac6M4XsiKZ7_12E3SBiJOWuE",
          projectId: "multi-store-app-e71a1",
          storageBucket: "multi-store-app-e71a1.appspot.com",
          messagingSenderId: "90698058405",
          appId: "1:90698058405:web:62d118fa16ae2dfc119b4c"
      ) : null
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: EasyLoading.init(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: MainScreen(),
    );
  }
}