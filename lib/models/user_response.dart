class User {
  User(
      {required this.id,
      required this.name,
      required this.last_name,
      required this.email,
      this.point,
      required this.token});

  int id;
  String name;
  String last_name;
  String email;
  String? point;
  String token;

  static User objJsonStudent(Map<String, dynamic> json) {
    return User(
        id: json['id'] as int,
        name: json['name'] as String,
        last_name: json['last_name'] as String,
        point: json['last_name'] as String,
        email: json['email'] as String,
        token: json['token'] as String);
  }

  static User objJsonTeacher(Map<String, dynamic> json) {
    return User(
        id: json['id'] as int,
        name: json['name'] as String,
        last_name: json['last_name'] as String,
        email: json['email'] as String,
        token: json['token'] as String);
  }
}

class Teacher {
  Teacher(
      {required this.id,
        required this.name,
        required this.last_name,
        required this.email,});

  int id;
  String name;
  String last_name;
  String email;

  static Teacher objJsonTeacher(Map<String, dynamic> json) {
    return Teacher(
        id: json['id'] as int,
        name: json['name'] as String,
        last_name: json['last_name'] as String,
        email: json['email'] as String);
  }
}

class Student {
  Student(
      {required this.id,
        required this.name,
        required this.last_name,
        required this.email,
        required this.point});

  int id;
  String name;
  String last_name;
  String email;
  int point;

  static Student objJsonStudent(Map<String, dynamic> json) {
    return Student(
        id: json['id'] as int,
        name: json['name'] as String,
        last_name: json['last_name'] as String,
        email: json['email'] as String,
        point: json['point'] as int);
  }
}
