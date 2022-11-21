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
