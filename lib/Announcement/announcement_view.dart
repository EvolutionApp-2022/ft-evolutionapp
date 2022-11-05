import 'package:flutter/material.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class AnnouncementView extends StatefulWidget {
  const AnnouncementView({Key? key}) : super(key: key);

  @override
  State<AnnouncementView> createState() => _AnnouncementViewState();
}

class _AnnouncementViewState extends State<AnnouncementView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Announcement',
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
                // ========== PERFIL DEL USUARIO ==========
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
                customText: 'Create Announcement',
                customColor1: Color.fromARGB(255, 255, 81, 0),
                customColor2: Color.fromARGB(255, 236, 183, 10),
                pushNamed: 'post_view',
                addIcon: true,
                customIcon: Icons.arrow_circle_right_sharp),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Announcements',
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
                child: ListView(children: [
              CardButtonCustom(
                  textHeader: 'Reunion',
                  textContent: 'textContent',
                  customIcon: Icons.announcement,
                  customColor1: Color.fromARGB(255, 34, 0, 224),
                  customColor2: Color.fromARGB(157, 35, 0, 124),
                  pushNamed: 'pushNamed'),
              SizedBox(
                height: 10,
              ),
              CardButtonCustom(
                  textHeader: 'Reunion',
                  textContent: 'textContent',
                  customIcon: Icons.announcement,
                  customColor1: Color.fromARGB(255, 34, 0, 224),
                  customColor2: Color.fromARGB(157, 35, 0, 124),
                  pushNamed: 'pushNamed'),
              SizedBox(
                height: 10,
              ),
              CardButtonCustom(
                  textHeader: 'Reunion',
                  textContent: 'textContent',
                  customIcon: Icons.announcement,
                  customColor1: Color.fromARGB(255, 34, 0, 224),
                  customColor2: Color.fromARGB(157, 35, 0, 124),
                  pushNamed: 'pushNamed'),
              SizedBox(
                height: 10,
              ),
              CardButtonCustom(
                  textHeader: 'Reunion',
                  textContent: 'textContent',
                  customIcon: Icons.announcement,
                  customColor1: Color.fromARGB(255, 34, 0, 224),
                  customColor2: Color.fromARGB(157, 35, 0, 124),
                  pushNamed: 'pushNamed'),
              SizedBox(
                height: 10,
              ),
              CardButtonCustom(
                  textHeader: 'Reunion',
                  textContent: 'textContent',
                  customIcon: Icons.announcement,
                  customColor1: Color.fromARGB(255, 34, 0, 224),
                  customColor2: Color.fromARGB(157, 35, 0, 124),
                  pushNamed: 'pushNamed'),
              SizedBox(
                height: 10,
              ),
              CardButtonCustom(
                  textHeader: 'Reunion',
                  textContent: 'textContent',
                  customIcon: Icons.announcement,
                  customColor1: Color.fromARGB(255, 34, 0, 224),
                  customColor2: Color.fromARGB(157, 35, 0, 124),
                  pushNamed: 'pushNamed'),
            ]))
          ],
        ),
      ),
    );
  }
}
