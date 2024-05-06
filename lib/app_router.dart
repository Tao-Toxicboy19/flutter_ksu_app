
import 'package:flutter_app_ksu/screens/login/login_screen.dart';
import 'package:flutter_app_ksu/screens/welcome/welcome_screen.dart';

class AppRouter {
  //Router Map Key
  static const String welcome = 'welcome';
  static const String login = 'login';

  //Router Map
  static get routes => {
    welcome: (context) => WelcomeScreen(),
    login: (context) => LoginScreen(),
  };
}
