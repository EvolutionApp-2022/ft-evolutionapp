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
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Hi Docente Name',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Lorem ipsum dolor sit amet,consectetur adipiscing elit.Nullam vestibulum.',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Actions',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              ButtonColorCustom(
                  customText: 'Create new sesion',
                  customColor1: Color.fromRGBO(242, 101, 5, 1.0),
                  customColor2: Color.fromRGBO(242, 177, 5, 1.0),
                  addIcon: true,
                  customIcon: Icons.add_circle,
                  pushNamed: 'home_view'),
              SizedBox(
                height: 5,
              ),
              ButtonColorCustom(
                  customText: 'View courses',
                  customColor1: Color.fromRGBO(242, 101, 5, 1.0),
                  customColor2: Color.fromRGBO(242, 177, 5, 1.0),
                  addIcon: true,
                  customIcon: Icons.add_circle,
                  pushNamed: 'home_view'),
              SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Courses',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              const Expanded(
                child: CardCustom(
                  title: "ALGEBRA",
                  textContent:
                      "Incididunt ut cillum dolore cupidatat aliquip non nisi ad.",
                  navigationPath: 'course_detail_view',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
