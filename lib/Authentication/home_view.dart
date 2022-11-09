import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: AssetImage('assets/img/evolution-ico.png'),
              width: double.maxFinite,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
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
                            pushNamed: 'login_view',
                          ),
                          ButtonCustom(
                            sampleText: 'Sign Up',
                            pushNamed: 'sign_view',
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
