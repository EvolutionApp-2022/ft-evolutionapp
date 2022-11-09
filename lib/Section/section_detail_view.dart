import 'package:flutter/material.dart';
import 'package:ft_evolution_app/models/sections_response.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class SectionDetailView extends StatefulWidget {

  final Section section;

  const SectionDetailView(this.section, {Key? key}) : super(key: key);

  @override
  State<SectionDetailView> createState() => _SectionDetailViewState();
}

class _SectionDetailViewState extends State<SectionDetailView> {
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
                    'Section',
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
                      textHeader: widget.section.name,
                      textContent: 'sample section',
                      customIcon: Icons.aspect_ratio,
                      customColor1: Colors.black,
                      customColor2: Colors.black,
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
                  ButtonColorCustom(
                      customText: 'Announcements',
                      customColor1: Color.fromARGB(255, 255, 81, 0),
                      customColor2: Color.fromARGB(255, 236, 183, 10),
                      addIcon: true,
                      customIcon: Icons.arrow_circle_right_sharp,
                      pushNamed: ''),
                  SizedBox(
                    height: 15,
                  ),
                  ButtonColorCustom(
                      customText: 'List Alumns',
                      customColor1: Color.fromARGB(255, 255, 81, 0),
                      customColor2: Color.fromARGB(255, 236, 183, 10),
                      addIcon: true,
                      customIcon: Icons.arrow_circle_right_sharp,
                      pushNamed: ''),
                ])));
  }
}
