import 'package:flutter/material.dart';
import 'package:ft_evolution_app/Authentication/login_view.dart';
import 'package:ft_evolution_app/models/user_response.dart';
import 'package:ft_evolution_app/providers/provider_signup.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

import '../widgets/button_color_custom_widget.dart';

class UserView extends StatefulWidget {
  final User user;

  const UserView(this.user, {Key? key}) : super(key: key);

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Final step',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Montserrat'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Select type user!',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                    "Our application is for two types of users, we offer different features for each one. Identify yourself, select and enjoy as soon as possible."),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Container(
                        width: double.maxFinite,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(255, 32, 28, 233),
                                Color.fromARGB(255, 47, 225, 248),
                              ]),
                        ),
                        child: TextButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {
                            setState(() {
                              RegisterProvider.registerTeacher(
                                      widget.user.name,
                                      widget.user.last_name,
                                      widget.user.email,
                                      widget.user.token)
                                  .then((value) {
                                if (value) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginView()));
                                }
                              });
                            });
                          },
                          child: Text("TEACHER",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(255, 156, 0, 34),
                                Color.fromARGB(255, 153, 0, 255),
                              ]),
                        ),
                        child: SizedBox(
                          height: 80,
                          width: double.maxFinite,
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () {
                              setState(() {
                                RegisterProvider.registerStudent(
                                        widget.user.name,
                                        widget.user.last_name,
                                        widget.user.email,
                                        widget.user.token)
                                    .then((value) {
                                  if (value) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginView()));
                                  }
                                });
                              });
                            },
                            child: Text("STUDENT",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                          ),
                        ),
                      ),
                      /*ButtonColorCustomWidget(
                        customColor1: Color.fromARGB(255, 25, 0, 255),
                        customColor2: Color.fromARGB(255, 0, 185, 241),
                        customText: 'TEACHER',
                        pushNamed: 'teacher',
                        customHigh: 100,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ButtonColorCustomWidget(
                        customColor1: Color.fromARGB(255, 156, 0, 34),
                        customColor2: Color.fromARGB(255, 153, 0, 255),
                        customText: 'STUDENT',
                        pushNamed: 'student',
                        customHigh: 100,
                      ),
                      const SizedBox(
                        height: 10,
                      ),*/
                      // const ButtonCustom(
                      //     sampleText: 'Join', pushNamed: 'sign_view'),
                    ],
                  )),
            ],
          ),
        ),
      ],
    ));
  }
}
