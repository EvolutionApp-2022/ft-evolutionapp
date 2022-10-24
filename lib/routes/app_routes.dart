import 'package:flutter/material.dart';
import 'package:ft_evolution_app/views.dart';

class AppRoutes {
  static const initialRoute = "itemTeacher_view";

  static Map<String, Widget Function(BuildContext)> routes = {
    'profile_view': (BuildContext context) => const ProfileView(),
    'dashboard_view': (BuildContext context) => const DashboardView(),
    'courses_view': (BuildContext context) => const CoursesView(),
    'welcomeview': (BuildContext context) => const WelcomeView(),
    'signview': (BuildContext context) => const SigninView(),
    'loginview': (BuildContext context) => const LoginView(),
    'announcement_view': (BuildContext context) => const AnnouncementView(),
    'post_view': (BuildContext context) => const PostView(),
    'itemTeacher_view': (BuildContext context) => const ItemTeacherView(),
    'itemTeacherPost_view': (BuildContext context) => const ItemTeacherPostView(),
  };
}
