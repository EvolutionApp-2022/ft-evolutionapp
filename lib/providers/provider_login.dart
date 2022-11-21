import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ft_evolution_app/models/user_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthProvider {
  static Future<bool> validateUser(String email, String password) async {
    final storage = new FlutterSecureStorage();

    final urlTeacher =
        Uri.parse("http://10.0.2.2:8080/api/v1/teachers/auth/sign-in");
    final urlStudent =
        Uri.parse("http://10.0.2.2:8080/api/v1/students/auth/sign-in");

    final responseStudent = await http.post(urlStudent,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': email,
          'password': password,
        }));

    final responseTeacher = await http.post(urlTeacher,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': email,
          'password': password,
        }));

    if (responseStudent.statusCode == 200) {
      final decodedResp = json.decode(responseStudent.body);
      final sample = User.objJsonStudent(decodedResp);
      storage.write(key: 'idUser', value: sample.id.toString());
      storage.write(key: 'typeUser', value: 'Student');
      print('validate Student');
      return true;
    } else if (responseTeacher.statusCode == 200) {
      final decodedResp = json.decode(responseTeacher.body);
      final sample = User.objJsonTeacher(decodedResp);
      storage.write(key: 'idUser', value: sample.id.toString());
      storage.write(key: 'typeUser', value: 'Teacher');
      print('validate Teacher');
      return true;
    } else {
      return false;
      // throw Exception('Failed to validate user');
    }
  }

  static Future<Teacher> getTeacherById(int teacherId) async {

    final response = await http.get(Uri.parse("http://10.0.2.2:8080/api/v1/teachers/${teacherId}"));

    if (response.statusCode == 200) {
      final responseJSON = json.decode(response.body);
      final teacher = Teacher.objJsonTeacher(responseJSON);
      return teacher;
    }
    throw Exception('Failed to get Teacher');
  }

  static Future<Student> getStudentById(int studentId) async {

    final response = await http.get(Uri.parse("http://10.0.2.2:8080/api/v1/students/${studentId}"));

    if (response.statusCode == 200) {
      final responseJSON = json.decode(response.body);
      final student = Student.objJsonStudent(responseJSON);
      return student;
    }
    throw Exception('Failed to get Student');
  }
}
