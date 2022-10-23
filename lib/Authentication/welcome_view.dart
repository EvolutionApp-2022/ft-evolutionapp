import 'package:flutter/material.dart';
import 'package:ft_evolution_app/views.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: LabelSample(),
    );
  }
}

class LabelSample extends StatelessWidget {
  const LabelSample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          Image(
            image: AssetImage('assets/evolution-ico.png'),
            width: double.maxFinite,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: (FormContent()),
          ),
        ],
      ),
    );
  }
}

class FormContent extends StatelessWidget {
  const FormContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Evolution',
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
          'Welcome!',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: 'Montserrat'),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown."),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.symmetric(
                      horizontal: 130,
                    )),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'loginview');
                  },
                  child: const Text('LogIn'),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.symmetric(
                      horizontal: 129,
                    )),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'signview');
                  },
                  child: const Text('SignIn'),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
