// ignore_for_file: prefer_const_constructors, unused_import

import "package:flutter/material.dart";
import "package:flutter_app_ksu/app_router.dart";
import "package:flutter_app_ksu/screens/welcome/welcome_screen.dart";
import "package:flutter_app_ksu/themes/styles.dart";

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: AppRouter.welcome,
      routes: AppRouter.routes,
    );
  }
}
