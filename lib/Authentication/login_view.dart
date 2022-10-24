import 'package:flutter/material.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

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
                'Log In',
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
                'Hello again!',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                    "Enter the credentials with which you created your account at the beginning and enjoy the features of the application."),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      TextFormFieldCustom(
                          var_hintText: "exameple@mail.com",
                          var_labelText: "Email",
                          var_keyboardType: TextInputType.emailAddress,
                          var_obscureText: false,
                          var_suffixIcon: Icons.mail_outline_rounded),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormFieldCustom(
                          var_hintText: "*********",
                          var_labelText: "Password",
                          var_obscureText: true,
                          var_suffixIcon: Icons.password_outlined),
                      const SizedBox(
                        height: 10,
                      ),
                      const ButtonCustom(
                          sampleText: 'Log In', pushNamed: 'signview'),
                    ],
                  )),
            ],
          ),
        ),
      ],
    ));
  }
}
