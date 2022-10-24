import 'package:flutter/material.dart';
import 'package:ft_evolution_app/views.dart';

class AppRoutes {
  static const initialRoute = "dashboard_view";

  static Map<String, Widget Function(BuildContext)> routes = {
    'welcomeview': (BuildContext context) => const WelcomeView(),
    'loginview': (BuildContext context) => const LoginView(),
    'signview': (BuildContext context) => const SigninView(),
    'profile_view': (BuildContext context) => const ProfileView(),
    'dashboard_view': (BuildContext context) => const DashboardView(),
    'courses_view': (BuildContext context) => const CoursesView(),
    'course_detail_view': (BuildContext context) => const CourseDetailView(),
    'section_detail_view': (BuildContext context) => const SectionDetailView(),
    'create_section_view': (BuildContext context) => const CreateSectionView(),

  };
}
