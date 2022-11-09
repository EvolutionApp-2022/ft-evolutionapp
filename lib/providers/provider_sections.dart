import 'package:ft_evolution_app/models/sections_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SectionsProvider {
  static Future<List<Section>> getAllSections(int courseId, int teacherId) async {
    final response =
    await http.get(Uri.parse("https://app-bk-evolutionapp-develop-221109111646.azurewebsites.net/api/v1/courses/${courseId}/teachers/${teacherId}/sections"));

    if (response.statusCode == 200) {
      final responseJSON = json.decode(response.body);
      final allSections = listSections.listaSection(responseJSON);
      return allSections;
    }
    return <Section>[];
  }
}