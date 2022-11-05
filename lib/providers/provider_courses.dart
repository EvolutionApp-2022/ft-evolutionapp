import 'package:flutter/material.dart';
import 'package:ft_evolution_app/models/courses_reponse.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CoursesProvider extends ChangeNotifier {
  CoursesProvider() {
    print('get all go');
    this.getAllCourses();
  }

  getAllCourses() async {
    var url = Uri.http('10.0.2.2:8080', '/api/v1/courses');
    print(url);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final responseJSON = json.decode(response.body);
      final allCourses = listCourses.listaCourse(responseJSON);
      print("allCourses");
      print(allCourses[0].description);
      // TODO: la siguiente linea devuelve la lista de cursos
      // return allCourses;
    }

    print("RESPONSE");
    print(response.body);
  }
}
