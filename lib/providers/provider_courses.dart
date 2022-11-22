import 'package:ft_evolution_app/models/courses_reponse.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CoursesProvider {
  static Future<List<Course>> getAllCourses() async {
    final response = await http.get(Uri.parse(
        "http://ec2-3-92-202-108.compute-1.amazonaws.com:8080/api/v1/courses"));

    if (response.statusCode == 200) {
      final responseJSON = json.decode(response.body);
      final allCourses = listCourses.listaCourse(responseJSON);
      return allCourses;
    }
    return <Course>[];
  }
}
