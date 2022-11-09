import 'package:ft_evolution_app/models/announcements_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AnnouncementsProvider {
  static Future<List<Announcement>> getAllAnnouncements(int sectionId) async {
    final response =
    await http.get(Uri.parse("http://10.0.2.2:8080/api/v1/sections/${sectionId}/announcements"));

    if (response.statusCode == 200) {
      final responseJSON = json.decode(response.body);
      final allAnnouncements = listAnnouncements.listaAnnouncement(responseJSON);
      return allAnnouncements;
    }
    return <Announcement>[];
  }
}