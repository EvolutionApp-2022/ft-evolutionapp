import 'package:flutter/material.dart';
import 'package:ft_evolution_app/Courses/couse_detail_view.dart';
import 'package:ft_evolution_app/providers/provider_courses.dart';
import 'package:ft_evolution_app/widgets/card_buttom_custom_p.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class CoursesView extends StatefulWidget {
  const CoursesView({Key? key}) : super(key: key);

  @override
  State<CoursesView> createState() => _CoursesViewState();
}

class _CoursesViewState extends State<CoursesView> {
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
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
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
                customText: 'Create new section',
                customColor1: Color.fromARGB(255, 255, 81, 0),
                customColor2: Color.fromARGB(255, 236, 183, 10),
                pushNamed: 'create_section_view',
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
            Expanded(
              child: FutureBuilder(
                initialData: [],
                future: CoursesProvider.getAllCourses(),
                builder: (context, AsyncSnapshot<List> snapshot) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      var course = snapshot.data![index];
                      return CardButtonCustomP(
                          textHeader: course.name.toString(),
                          textContent: course.last_name.toString(),
                          customIcon: Icons.arrow_circle_right_rounded,
                          customColor1: Color.fromRGBO(7, 53, 249, 2),
                          customColor2: Color.fromRGBO(6, 174, 234, 2),
                          pushWidget: CourseDetailView(course));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
