import 'package:flutter/material.dart';
import 'package:ft_evolution_app/Courses/courses_view.dart';
import 'package:ft_evolution_app/models/courses_reponse.dart';
import 'package:ft_evolution_app/providers/provider_courses.dart';
import 'package:ft_evolution_app/providers/provider_sections.dart';
import 'package:ft_evolution_app/widgets/text_form_field_announcement_custom.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class CreateSectionView extends StatefulWidget {
  const CreateSectionView({Key? key}) : super(key: key);

  @override
  State<CreateSectionView> createState() => _CreateSectionViewState();
}

class _CreateSectionViewState extends State<CreateSectionView> {

  final name = TextEditingController();
  
  Course courseSelected = Course(id: 0, name: "name", description: "description");

  List<dynamic> listItems = [
    /*"Algebra",
    "Aritmetica",
    "Geometria",
    "Literatura",
    "Biologia",*/
  ];

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
                  'Create Section',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat'),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      TextFormFieldAnnouncementCustom(
                          var_hintText: "Sample Name",
                          var_labelText: "Name",
                          var_keyboardType: TextInputType.text,
                          var_obscureText: false,
                          var_suffixIcon: Icons.abc,
                          value: name),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),

                Text(
                  "Course selected: ${courseSelected.name}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat'),
                ),

                /*Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(children: [
                    DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Courses',
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                        ),
                        value: dropDownValue,
                        items: listItems
                            .map((item) => DropdownMenuItem<String>(
                                enabled: true,
                                value: item.name.toString(), child: Text(item.name.toString())))
                            .toList(),

                        onChanged: (item) =>
                            setState(() => print(item) /*dropDownValue = item*/)
                    ),
                  ]),
                ),*/

                SizedBox(
                  width: 310,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                  onPressed: () {
                      SectionsProvider.postSection(courseSelected.id, 1, name.text).then((value) {
                        name.clear();
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => CoursesView()));
                      });

                  },
                  child: Text("Create Section"))
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
                          return Container(
                            margin: EdgeInsets.only(bottom: 10),
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromRGBO(7, 53, 249, 2),
                                    Color.fromRGBO(6, 174, 234, 2),
                            ])),
                            child: TextButton(
                              style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.all(0))),
                              onPressed: () {
                                setState(() {
                                  courseSelected = course;
                                });
                              },
                              child: Text(course.name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
            ]),
    ));
  }
}
