import 'package:basics/data/notifiers.dart';
import 'package:basics/views/pages/welcom_page.dart';
import 'package:basics/views/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isLightModeNotifier,
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: isLightModeNotifier.value
                  ? Brightness.light
                  : Brightness.dark,
            ),
          ),
          home: WelcomPage(),
        );
      },
    );
  }
}
