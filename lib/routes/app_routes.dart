import 'package:flutter/material.dart';
import 'package:ft_evolution_app/views.dart';

class AppRoutes {
  static const initialRoute = "home_view";

  static Map<String, Widget Function(BuildContext)> routes = {
    'profile_view': (BuildContext context) => const ProfileView(),
    'dashboard_view': (BuildContext context) => const DashboardView(),
    'courses_view': (BuildContext context) => const CoursesView(),
    'home_view': (BuildContext context) => const HomeView(),
    'sign_view': (BuildContext context) => const SigninView(),
    'login_view': (BuildContext context) => const LoginView(),
    'announcement_view': (BuildContext context) => const AnnouncementView(),
    'post_view': (BuildContext context) => const PostView(),
    'user_view': (BuildContext context) => const UserView(),
  };
}
