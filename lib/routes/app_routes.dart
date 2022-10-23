import 'package:flutter/material.dart';
import 'package:ft_evolution_app/views.dart';

class AppRoutes {
  static const initialRoute = "dashboard_view";

  static Map<String, Widget Function(BuildContext)> routes = {
    'profile_view': (BuildContext context) => const ProfileView(),
    'dashboard_view': (BuildContext context) => const DashboardView(),
    'courses_view': (BuildContext context) => const CoursesView()
  };
}
