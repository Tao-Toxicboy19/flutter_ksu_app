// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_ksu/components/mobile_layout.dart';
import 'package:flutter_app_ksu/components/responsive_layout.dart';
import 'package:flutter_app_ksu/components/web_layout.dart';
import 'package:flutter_app_ksu/screens/login/login_from.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      webChild: WebLayout(
        imageWidget: Image.asset(
          "assets/images/login.png",
          width: 200,
        ),
        dataWidget: LoginForm(),
      ), 
      mobileChild: MobileLayout(
        imageWidget: Image.asset(
          "assets/images/login.png",
          width: 75,
        ),
        dataWidget: LoginForm(),
      )
    );
  }
}