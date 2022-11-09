class Section {
  Section({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  static Section objJson(Map<String, dynamic> json) {
    return Section(
        id: json['id'] as int,
        name: json['name'] as String,);
  }
}

class listSections {
  static List<Section> listaSection(List<dynamic> listaJson) {
    List<Section> listadoSection = [];
    // ignore: unnecessary_null_comparison
    if (listaJson != null) {
      for (var item in listaJson) {
        final sample = Section.objJson(item);
        listadoSection.add(sample);
      }
    }
    return listadoSection;
  }
}