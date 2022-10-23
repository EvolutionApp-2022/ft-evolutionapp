import 'package:flutter/material.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
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
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "example@mail.com",
                          labelText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          )),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      // keyboardType: TextInputType(),
                      decoration: const InputDecoration(
                          hintText: "*********",
                          labelText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          )),
                    ),
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
    ));
  }
}
