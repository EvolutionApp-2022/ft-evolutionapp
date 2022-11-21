import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ft_evolution_app/models/user_response.dart';
import 'package:ft_evolution_app/providers/provider_login.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {

  final storage = new FlutterSecureStorage();

  Teacher teacher = Teacher(id: 0, name: "name", last_name: "last_name", email: "email");

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Evolution',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
              onPressed: () {
                setState(() {
                  storage.read(key: "idUser").then((value) =>
                      AuthProvider.getTeacherById(int.parse(value.toString())).then((value) => teacher = value)
                  );
                });
              },
              child: Text("eee",
                style: TextStyle(color: Colors.white),
              )
          ),
          CircleAvatar(
            backgroundImage: const AssetImage('assets/img/profile_m.png'),
            radius: 100,
            onBackgroundImageError: (e, s) {
              debugPrint('There is a problem in the image: $e, $s');
            },
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Docente',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Name: ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    teacher.name,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Lastname: ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    teacher.last_name,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Email: ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    teacher.email,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ],
          ),
          ButtonCustom(sampleText: 'Log out', pushNamed: 'home_view')
        ],
      ),
    );
  }
}
