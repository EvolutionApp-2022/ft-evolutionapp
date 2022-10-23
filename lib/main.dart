import 'package:flutter/material.dart';
import 'package:ft_evolution_app/views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'loginview',
      routes: {
        'loginview': (BuildContext context) => const LoginView(),
      },
    );
  }
}
