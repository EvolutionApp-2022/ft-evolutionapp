import 'package:flutter/material.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class SigninView extends StatelessWidget {
  const SigninView({Key? key}) : super(key: key);

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
                'Sign In',
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
                      TextFormFieldCustom(
                          var_hintText: "Will",
                          var_labelText: "Name",
                          var_obscureText: false,
                          var_suffixIcon: Icons.person_outlined),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormFieldCustom(
                          var_hintText: "Smith",
                          var_labelText: "Lastname",
                          var_obscureText: false,
                          var_suffixIcon: Icons.person_outlined),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormFieldCustom(
                          var_hintText: "example@mail.com",
                          var_labelText: "Email",
                          var_obscureText: false,
                          var_suffixIcon: Icons.mail_outline_rounded),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormFieldCustom(
                          var_hintText: "*********",
                          var_labelText: "Pasword",
                          var_obscureText: true,
                          var_suffixIcon: Icons.password_rounded),
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
