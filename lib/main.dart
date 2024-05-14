import "dart:js_interop_unsafe";

import "package:flutter/material.dart";
import "package:flutter_node_store/app_router.dart";
import "package:flutter_node_store/themes/styles.dart";
import "package:shared_preferences/shared_preferences.dart";

// กำหนดตัวแปร initialRoute ให้กับ materialApp
var initialRoute;

void main() async {
  // ต้องเรียกใช้ WidgetsFlutterBinding.ensureInitialized()
  // เพื่อให้สามารถเรียกใช้ SharedPreferences ได้
  WidgetsFlutterBinding.ensureInitialized();

  // สร้างตัวแปร prefs เพื่อเรียกใช้ SharedPreferences
  SharedPreferences prefs = await SharedPreferences.getInstance();

  // ตรวจสอบว่าเคยแสดง Intro แล้วหรือยัง
  if (prefs.getBool('welcomeStatus') == true) {
    // ถ้าเคยแสดง Intro แล้ว ให้ไปยังหน้า Login
    initialRoute = AppRouter.login;
  } else{
    // ถ้าเคยแสดง Intro แล้ว ให้ไปยังหน้า welcome
    initialRoute = AppRouter.welcome;

  }

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
