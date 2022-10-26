import 'package:flutter/material.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class DashboardStudentView extends StatefulWidget {
  const DashboardStudentView({Key? key}) : super(key: key);

  @override
  State<DashboardStudentView> createState() => _DashboardStudentView();
}

class _DashboardStudentView extends State<DashboardStudentView> {
  //var parser = EmojiParser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Evolution',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'profileStudent_view');
              },
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ))
        ],
      ),

      //Contenido
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Montserrat'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Hello Student! 👋',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Student welcome to the main menu of the application and enjoy learning with the teachers of your educational institution.",
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Action',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat'),
            ),
            SizedBox(
              height: 15,
            ),
            ButtonColorCustom(
                customText: 'View all courses',
                customColor1: Color.fromARGB(255, 255, 81, 0),
                customColor2: Color.fromARGB(255, 236, 183, 10),
                pushNamed: 'login_view',
                addIcon: true,
                customIcon: Icons.arrow_circle_right_sharp),
            SizedBox(
              height: 15,
            ),
            Text(
              'Courses',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat'),
            ),
            SizedBox(
              height: 15,
            ),
            CardButtonCustom(
              customColor1: Color.fromARGB(255, 207, 0, 69),
              customColor2: Color.fromARGB(255, 151, 0, 221),
              customIcon: Icons.remove_red_eye,
              pushNamed: 'itemsStudent_view',
              textContent:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys.',
              textHeader: 'ALGEBRA',
            ),
            SizedBox(
              height: 15,
            ),
            CardButtonCustom(
              customColor1: Color.fromARGB(255, 207, 0, 69),
              customColor2: Color.fromARGB(255, 151, 0, 221),
              customIcon: Icons.remove_red_eye,
              pushNamed: 'itemsStudent_view',
              textContent:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys.',
              textHeader: 'ARITMETICA',
            ),
          ],
        ),
      ),
    );
  }
}
