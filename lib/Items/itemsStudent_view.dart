import 'package:flutter/material.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class ItemStudentView extends StatelessWidget {
  const ItemStudentView({Key? key}) : super(key: key);

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
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Items',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat'),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView(
                  children: [
                    CardButtonCustom(
                        textHeader: 'Material [DOC]',
                        textContent:
                            "Student welcome to the main menu of the application and enjoy learning with the teachers of your educational.",
                        customIcon: Icons.file_present_outlined,
                        customColor1: Color.fromARGB(255, 0, 153, 38),
                        customColor2: Color.fromARGB(255, 112, 211, 0),
                        pushNamed: 'itemStudentDocumentDetail_view'),
                    SizedBox(
                      height: 10,
                    ),
                    CardButtonCustom(
                        textHeader: 'Material [VID]',
                        textContent:
                            "Student welcome to the main menu of the application and enjoy learning with the teachers of your educational.",
                        customIcon: Icons.video_camera_back_outlined,
                        customColor1: Color.fromARGB(255, 0, 153, 38),
                        customColor2: Color.fromARGB(255, 112, 211, 0),
                        pushNamed: 'itemStudentVideoDetail_view'),
                    SizedBox(
                      height: 10,
                    ),
                    CardButtonCustom(
                        textHeader: 'Material [VID]',
                        textContent:
                            "Student welcome to the main menu of the application and enjoy learning with the teachers of your educational.",
                        customIcon: Icons.video_camera_back_outlined,
                        customColor1: Color.fromARGB(255, 0, 153, 38),
                        customColor2: Color.fromARGB(255, 112, 211, 0),
                        pushNamed: 'itemStudentVideoDetail_view'),
                    SizedBox(
                      height: 10,
                    ),
                    CardButtonCustom(
                        textHeader: 'Material [DOC]',
                        textContent:
                            "Student welcome to the main menu of the application and enjoy learning with the teachers of your educational.",
                        customIcon: Icons.file_present_outlined,
                        customColor1: Color.fromARGB(255, 0, 153, 38),
                        customColor2: Color.fromARGB(255, 112, 211, 0),
                        pushNamed: 'itemStudentDocumentDetail_view'),
                    SizedBox(
                      height: 10,
                    ),
                    CardButtonCustom(
                        textHeader: 'Material [VID]',
                        textContent:
                            "Student welcome to the main menu of the application and enjoy learning with the teachers of your educational.",
                        customIcon: Icons.video_camera_back_outlined,
                        customColor1: Color.fromARGB(255, 0, 153, 38),
                        customColor2: Color.fromARGB(255, 112, 211, 0),
                        pushNamed: 'itemStudentVideoDetail_view'),
                    SizedBox(
                      height: 10,
                    ),
                    CardButtonCustom(
                        textHeader: 'Material [DOC]',
                        textContent:
                            "Student welcome to the main menu of the application and enjoy learning with the teachers of your educational.",
                        customIcon: Icons.file_present_outlined,
                        customColor1: Color.fromARGB(255, 0, 153, 38),
                        customColor2: Color.fromARGB(255, 112, 211, 0),
                        pushNamed: 'itemStudentDocumentDetail_view'),
                    SizedBox(
                      height: 10,
                    ),
                    CardButtonCustom(
                        textHeader: 'Material [VID]',
                        textContent:
                            "Student welcome to the main menu of the application and enjoy learning with the teachers of your educational.",
                        customIcon: Icons.video_camera_back_outlined,
                        customColor1: Color.fromARGB(255, 0, 153, 38),
                        customColor2: Color.fromARGB(255, 112, 211, 0),
                        pushNamed: 'itemStudentVideoDetail_view'),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
