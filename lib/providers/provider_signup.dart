import 'package:http/http.dart' as http;
import 'dart:convert';

class RegisterProvider {
  static Future<bool> registerTeacher(
      String name, String last_name, String email, String password) async {
    final urlTeacher = Uri.parse(
        "http://ec2-3-92-202-108.compute-1.amazonaws.com:8080/api/v1/teachers/auth/sign-up");

    final responseStudent = await http.post(urlTeacher,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'name': name,
          'last_name': last_name,
          'email': email,
          'password': password
        }));

    if (responseStudent.statusCode == 200) return true;
    return false;
  }

  static Future<bool> registerStudent(
      String name, String last_name, String email, String password) async {
    final urlStudent = Uri.parse(
        "http://ec2-3-92-202-108.compute-1.amazonaws.com:8080/api/v1/students/auth/sign-up");

    final responseStudent = await http.post(urlStudent,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, dynamic>{
          'name': name,
          'last_name': last_name,
          'email': email,
          'point': 0,
          'password': password
        }));

    if (responseStudent.statusCode == 200) return true;
    return false;
  }
}
