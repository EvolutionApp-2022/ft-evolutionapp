import 'package:flutter/material.dart';
import 'package:ft_evolution_app/Items/itemsStudent_view.dart';
import 'package:ft_evolution_app/Section/section_detail_view.dart';
import 'package:ft_evolution_app/models/courses_reponse.dart';
import 'package:ft_evolution_app/providers/provider_sections.dart';
import 'package:ft_evolution_app/views.dart';
import 'package:ft_evolution_app/widgets/button_color_custom_p.dart';
import 'package:ft_evolution_app/widgets/card_buttom_custom_p.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class CourseDetailStudentView extends StatefulWidget {
  final Course course;

  CourseDetailStudentView(this.course, {Key? key}) : super(key: key);

  @override
  State<CourseDetailStudentView> createState() =>
      _CourseDetailStudentViewState();
}

class _CourseDetailStudentViewState extends State<CourseDetailStudentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Evolution',
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
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
                    'Course',
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
                      textHeader: widget.course.name,
                      textContent: widget.course.description,
                      customIcon: Icons.book_rounded,
                      customColor1: Color.fromRGBO(7, 53, 249, 2),
                      customColor2: Color.fromRGBO(6, 174, 234, 2),
                      pushNamed: ''),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Actions',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ButtonColorCustomP(
                    customText: 'Items',
                    customColor1: Color.fromARGB(255, 255, 81, 0),
                    customColor2: Color.fromARGB(255, 236, 183, 10),
                    addIcon: true,
                    customIcon: Icons.arrow_circle_right_sharp,
                    pushWidget: ItemStudentView(widget.course.id),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ButtonColorCustomP(
                      customText: 'Announcements',
                      customColor1: Color.fromARGB(255, 255, 81, 0),
                      customColor2: Color.fromARGB(255, 236, 183, 10),
                      addIcon: true,
                      customIcon: Icons.arrow_circle_right_sharp,
                      pushWidget: AnnouncementStudentView(1)),
                ])));
  }
}
