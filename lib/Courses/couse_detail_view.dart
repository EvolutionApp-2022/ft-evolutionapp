import 'package:flutter/material.dart';
import 'package:ft_evolution_app/models/courses_reponse.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class CourseDetailView extends StatefulWidget {
  final course c;

  CourseDetailView(this.c, {Key? key}) : super(key: key);

  @override
  State<CourseDetailView> createState() => _CourseDetailViewState();
}

class _CourseDetailViewState extends State<CourseDetailView> {
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
              onPressed: () {Navigator.pushNamed(context, 'profile_view');},
              icon: const Icon(
                Icons.person,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 35, right: 35),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              'Courses',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
          ),
          Expanded(
            child: CardCustom(
                title: widget.c.name,
                textContent:
                    widget.c.description,
                    navigationPath: 'section_detail_view',),
          ),

          //BUTTON CREADO POR MIS COMPIS

          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              'Sections',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
          ),

          Expanded(
            child: CardCustom(
              title: "MTF-001",
              textContent:
                  "Incididunt ut cillum dolore cupidatat aliquip non nisi ad.",
              color: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 0, 0, 0),
              ],
              navigationPath: 'null',
            ),
          ),
        ]),
      ),
    );
  }

  @override
  void initState() {
    print("val: ${widget.c.name}");
  }
}
