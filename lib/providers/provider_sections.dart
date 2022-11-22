import 'package:ft_evolution_app/models/sections_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SectionsProvider {
  static Future<List<Section>> getAllSections(
      int courseId, int teacherId) async {
    final response = await http.get(Uri.parse(
        "http://ec2-3-92-202-108.compute-1.amazonaws.com:8080/api/v1/courses/${courseId}/teachers/${teacherId}/sections"));

    if (response.statusCode == 200) {
      final responseJSON = json.decode(response.body);
      final allSections = listSections.listaSection(responseJSON);
      return allSections;
    }
    return <Section>[];
  }

  static Future<Section> postSection(
      int courseId, int teacherId, String name) async {
    final response = await http.post(
        Uri.parse(
            "http://ec2-3-92-202-108.compute-1.amazonaws.com:8080/api/v1/courses/${courseId}/teachers/${teacherId}/sections"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{'name': name}));

    if (response.statusCode == 200) {
      final responseJSON = json.decode(response.body);
      final sample = Section.objJson(responseJSON);
      return sample;
    } else {
      throw Exception('Failed to create Section');
    }
  }
}
