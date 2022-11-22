import 'package:flutter/material.dart';
import 'package:ft_evolution_app/models/user_response.dart';
import 'package:ft_evolution_app/views.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class SigninView extends StatefulWidget {
  const SigninView({Key? key}) : super(key: key);

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  final name = TextEditingController();
  final last_name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          height: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign Up',
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
                'Complete the fields!',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text("The following data are essential to know you."),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      TextFormFieldAnnouncementCustom(
                          value: name,
                          var_hintText: "Will",
                          var_labelText: "Name",
                          var_obscureText: false,
                          var_suffixIcon: Icons.person_outlined),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormFieldAnnouncementCustom(
                          value: last_name,
                          var_hintText: "Smith",
                          var_labelText: "Lastname",
                          var_obscureText: false,
                          var_suffixIcon: Icons.person_outlined),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormFieldAnnouncementCustom(
                          value: email,
                          var_hintText: "example@mail.com",
                          var_labelText: "Email",
                          var_obscureText: false,
                          var_suffixIcon: Icons.mail_outline_rounded),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormFieldAnnouncementCustom(
                          value: password,
                          var_hintText: "*********",
                          var_labelText: "Pasword",
                          var_obscureText: true,
                          var_suffixIcon: Icons.password_rounded),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UserView(User(
                                          id: 0,
                                          name: name.text,
                                          last_name: last_name.text,
                                          email: email.text,
                                          token: password.text))));
                            });
                          },
                          child: Text("Continue"),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ],
    ));
  }
}
