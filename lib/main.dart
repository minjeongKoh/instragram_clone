import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragram_clone/src/app.dart';
import 'package:instragram_clone/src/binding/init_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0.0),
      ),
      home: const App(),
      initialBinding: InitBinding(),
    );
  }
}
