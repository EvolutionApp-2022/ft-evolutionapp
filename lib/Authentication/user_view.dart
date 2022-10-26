import 'package:flutter/material.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);

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
                      ButtonColorCustom(
                        customColor1: Color.fromARGB(255, 25, 0, 255),
                        customColor2: Color.fromARGB(255, 0, 195, 255),
                        customText: 'TEACHER',
                        pushNamed: 'home_view',
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ButtonColorCustom(
                        customColor1: Color.fromARGB(255, 156, 0, 34),
                        customColor2: Color.fromARGB(255, 153, 0, 255),
                        customText: 'STUDENT',
                        pushNamed: 'home_view',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ButtonCustom(
                          sampleText: 'Join', pushNamed: 'sign_view'),
                    ],
                  )),
            ],
          ),
        ),
      ],
    ));
  }
}
