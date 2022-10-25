import 'package:flutter/material.dart';
import 'package:ft_evolution_app/views.dart';

class AppRoutes {
  static const initialRoute = "welcomeview";

  static Map<String, Widget Function(BuildContext)> routes = {
    'profile_view': (BuildContext context) => const ProfileView(),
    'dashboard_view': (BuildContext context) => const DashboardView(),
    'courses_view': (BuildContext context) => const CoursesView(),
    'welcomeview': (BuildContext context) => const WelcomeView(),
    'signview': (BuildContext context) => const SigninView(),
    'loginview': (BuildContext context) => const LoginView(),
    'announcement_view': (BuildContext context) => const AnnouncementView(),
    'post_view': (BuildContext context) => const PostView(),
    'dashboardStudent_view': (BuildContext context) => const DashboardStudentView(),
    'coursesStudent_view': (BuildContext context) => const CourseStudentView(),
    'itemsStudent_view': (BuildContext context) => const ItemStudentView(),
    'profileStudent_view': (BuildContext context) => const ProfileStudentView(),
    'itemStudentDocumentDetail_view': (BuildContext context) => const ItemStudentDocumentDetailView(),
    'itemStudentVideoDetail_view': (BuildContext context) => const ItemStudentVideoDetailView()
  };
}
