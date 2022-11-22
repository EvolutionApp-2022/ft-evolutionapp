import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ft_evolution_app/models/user_response.dart';
import 'package:ft_evolution_app/providers/provider_login.dart';
import '../widgets/widgets.dart';

class ProfileStudentView extends StatefulWidget {
  const ProfileStudentView({Key? key}) : super(key: key);

  @override
  State<ProfileStudentView> createState() => _ProfileStudentViewState();
}

class _ProfileStudentViewState extends State<ProfileStudentView> {
  final storage = new FlutterSecureStorage();

  Student student = Student(
      id: 0, name: "name", last_name: "last_name", email: "email", point: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Evolution',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ))
        ],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      storage.read(key: "idUser").then((value) =>
                          AuthProvider.getStudentById(
                                  int.parse(value.toString()))
                              .then((value) => student = value));
                    });
                  },
                  child: Text(
                    "eee",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                child: Image(
                  image: AssetImage('assets/img/profile_f.png'),
                  width: 250,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Student',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 140,
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      child: Column(
                        children: [
                          Expanded(
                            //TODO: Modificar la info
                            child: Text(
                              "Name: ${student.name}",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Last Name: ${student.last_name}",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Email: ${student.email}",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'School: ' + 'School where Raaaa',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: student.point.toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Points',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      ButtonCustom(
                        sampleText: 'Log Out',
                        pushNamed: 'home_view',
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
