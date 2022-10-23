import 'package:flutter/material.dart';
import 'package:ft_evolution_app/views.dart';

class AppRoutes {
  static const initialRoute = "welcomeview";

  static Map<String, Widget Function(BuildContext)> routes = {
    'welcomeview': (BuildContext context) => const WelcomeView(),
    'signview': (BuildContext context) => const SigninView(),
    'loginview': (BuildContext context) => const LoginView(),
  };
}
