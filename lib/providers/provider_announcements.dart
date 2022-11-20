import 'package:ft_evolution_app/models/announcements_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AnnouncementsProvider {
  static Future<List<Announcement>> getAllAnnouncements(int sectionId) async {
    final response =
    await http.get(Uri.parse("https://app-bk-evolutionapp-develop-221109111646.azurewebsites.net/api/v1/sections/${sectionId}/announcements"));

    if (response.statusCode == 200) {
      final responseJSON = json.decode(response.body);
      final allAnnouncements = listAnnouncements.listaAnnouncement(responseJSON);
      return allAnnouncements;
    }
    return <Announcement>[];
  }

  static Future<Announcement> postAnnouncement(int sectionId, String title, String description) async {
    final response =
    await http.post(
        Uri.parse("https://app-bk-evolutionapp-develop-221109111646.azurewebsites.net/api/v1/sections/${sectionId}/announcements"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      body: jsonEncode(<String, String>{
        'title': title,
        'description': description
      })
    );

    if (response.statusCode == 200) {
      final responseJSON = json.decode(response.body);
      final sample = Announcement.objJson(responseJSON);
      return sample;
    }else{
      throw Exception('Failed to create announcement');
    }
  }
}