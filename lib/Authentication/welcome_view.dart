import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

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
    return Center(
      child: Column(
        children: const [
          Image(
            image: AssetImage('assets/img/evolution-ico.png'),
            width: double.maxFinite,
          ),
          SizedBox(
            height: 120,
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
              children: const [
                ButtonCustom(
                  sampleText: 'Log In',
                  pushNamed: 'loginview',
                ),
                ButtonCustom(
                  sampleText: 'Sign In',
                  pushNamed: 'itemsStudent_view',
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
