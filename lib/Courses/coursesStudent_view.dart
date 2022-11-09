import 'package:flutter/material.dart';
import 'package:ft_evolution_app/Courses/couse_detail_view.dart';
import 'package:ft_evolution_app/providers/provider_courses.dart';
import 'package:ft_evolution_app/widgets/card_buttom_custom_p.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class CourseStudentView extends StatelessWidget {
  const CourseStudentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Evolution',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(
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
                Navigator.pushNamed(context, 'profileStudent_view');
              },
              icon: Icon(
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
              'Information',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Montserrat'),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: FutureBuilder(
                    initialData: [],
                    //TODO: Quizá se deba cambiar el endpoint
                    future: CoursesProvider.getAllCourses(),
                    builder: (context, AsyncSnapshot<List> snapshot) {
                      return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          var course = snapshot.data![index];
                          return CardButtonCustomP(
                            //TODO: Aca va a cambiar los atributos de la entidad
                              textHeader: course.name.toString(),
                              textContent: course.description.toString(),
                              customIcon: Icons.arrow_circle_right_rounded,
                              customColor1: Color.fromRGBO(7, 53, 249, 2),
                              customColor2: Color.fromRGBO(6, 174, 234, 2),
                              pushWidget: CourseDetailView(course)
                          );
                        },
                      );
                    },
                ),
            ),

            /*CardButtonCustom(
              customColor1: Color.fromARGB(255, 25, 0, 255),
              customColor2: Color.fromARGB(255, 0, 185, 241),
              customIcon: Icons.remove_red_eye,
              pushNamed: 'coursesStudent_view',
              textContent:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys.',
              textHeader: 'ALGEBRA',
            ),*/

            SizedBox(
              height: 25,
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
                pushNamed: '',
                addIcon: true,
                customIcon: Icons.arrow_circle_right_sharp),
            SizedBox(
              height: 10,
            ),
            ButtonColorCustom(
                customText: 'Items',
                customColor1: Color.fromARGB(255, 255, 81, 0),
                customColor2: Color.fromARGB(255, 236, 183, 10),
                pushNamed: '',
                addIcon: true,
                customIcon: Icons.arrow_circle_right_sharp),
          ],
        ),
      ),
    );
  }
}
