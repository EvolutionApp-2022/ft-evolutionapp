import 'package:flutter/material.dart';
import 'package:ft_evolution_app/providers/provider_login.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ft_evolution_app/views.dart';

import 'package:ft_evolution_app/widgets/widgets.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomForm());
  }
}

class CustomForm extends StatefulWidget {
  const CustomForm({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();

  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
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
                        TextFormFieldAnnouncementCustom(
                          var_hintText: "exameple@mail.com",
                          var_labelText: "Email",
                          var_keyboardType: TextInputType.emailAddress,
                          var_obscureText: false,
                          var_suffixIcon: Icons.mail_outline_rounded,
                          value: email,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        TextFormFieldAnnouncementCustom(
                          var_hintText: "*********",
                          var_labelText: "Password",
                          var_obscureText: true,
                          var_suffixIcon: Icons.password_outlined,
                          value: password,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 310,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () {
                              setState(() {
                                final storage = new FlutterSecureStorage();
                                AuthProvider.validateUser(
                                        email.text, password.text)
                                    .then((value) {
                                  if (value) {
                                    Future<String?> sample2 =
                                        storage.read(key: 'typeUser');
                                    sample2.then(
                                        (value) => Navigator.of(context)
                                            .pushAndRemoveUntil(
                                                MaterialPageRoute<Null>(
                                                    builder: (BuildContext
                                                            context) =>
                                                        value == 'Student'
                                                            ? const DashboardStudentView()
                                                            : const DashboardView()),
                                                (Route<dynamic> route) => false)

                                        // Navigator.pushNamed(
                                        //     context, "dashboard${value}_view")

                                        );
                                    ;
                                  }
                                });
                              });
                            },
                            child: Text("Log in"),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
