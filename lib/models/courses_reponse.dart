class Course {
  Course({
    required this.id,
    required this.name,
    required this.description,
  });

  int id;
  String name;
  String description;

  static Course objJson(Map<String, dynamic> json) {
    return Course(
        id: json['id'] as int,
        name: json['name'] as String,
        description: json['description'] as String);
  }
}

class listCourses {
  static List<Course> listaCourse(List<dynamic> listaJson) {
    List<Course> listadoCourse = [];
    // ignore: unnecessary_null_comparison
    if (listaJson != null) {
      for (var item in listaJson) {
        final sample = Course.objJson(item);
        listadoCourse.add(sample);
      }
    }
    return listadoCourse;
  }
}
