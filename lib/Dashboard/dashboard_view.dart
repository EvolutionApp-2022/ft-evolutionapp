import 'package:flutter/material.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

abstract class ListItem {}

class SampleItem implements ListItem {
  final String header;
  final String body;

  SampleItem(this.header, this.body);
}

class _DashboardViewState extends State<DashboardView> {
  final courses = <SampleItem>[
    SampleItem("ALGEBRA",
        "Ipsum commodo minim non amet nisi occaecat quis magna deserunt eu irure reprehenderit."),
    SampleItem("COMUNICACION",
        "Ipsum commodo minim non amet nisi occaecat quis magna deserunt eu irure reprehenderit."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Evolution',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'profile_view');
              },
              icon: const Icon(
                Icons.person,
                color: Colors.black,
              ))
        ],
      ),
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
              'Hello Teacher! 👋',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Teacher welcome to the main menu of the application and enjoy learning with the students of your educational institution.",
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
                customText: 'Announcements',
                customColor1: Color.fromARGB(255, 255, 81, 0),
                customColor2: Color.fromARGB(255, 236, 183, 10),
                pushNamed: 'announcement_view',
                addIcon: true,
                customIcon: Icons.arrow_circle_right_sharp),
            SizedBox(
              height: 8,
            ),
            ButtonColorCustom(
                customText: 'Courses',
                customColor1: Color.fromARGB(255, 255, 81, 0),
                customColor2: Color.fromARGB(255, 236, 183, 10),
                pushNamed: 'courses_view',
                addIcon: true,
                customIcon: Icons.arrow_circle_right_sharp),
            SizedBox(
              height: 15,
            ),
            Text(
              'Courses recently visited',
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
              customColor1: Color.fromARGB(255, 25, 0, 255),
              customColor2: Color.fromARGB(255, 0, 185, 241),
              customIcon: Icons.remove_red_eye,
              pushNamed: 'coursesStudent_view',
              textContent:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys.',
              textHeader: 'ALGEBRA',
            ),
            SizedBox(
              height: 15,
            ),
            CardButtonCustom(
              customColor1: Color.fromARGB(255, 25, 0, 255),
              customColor2: Color.fromARGB(255, 0, 185, 241),
              customIcon: Icons.remove_red_eye,
              pushNamed: 'coursesStudent_view',
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
