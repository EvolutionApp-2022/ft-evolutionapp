class Announcement {
  Announcement({
    required this.id,
    required this.title,
    required this.description,
  });

  int id;
  String title;
  String description;

  static Announcement objJson(Map<String, dynamic> json) {
    return Announcement(
        id: json['id'] as int,
        title: json['title'] as String,
        description: json['description'] as String);
  }
}

class listAnnouncements {
  static List<Announcement> listaAnnouncement(List<dynamic> listaJson) {
    List<Announcement> listadoAnnouncement = [];
    if (listaJson != null) {
      for (var item in listaJson) {
        final sample = Announcement.objJson(item);
        listadoAnnouncement.add(sample);
      }
    }
    return listadoAnnouncement;
  }
}
