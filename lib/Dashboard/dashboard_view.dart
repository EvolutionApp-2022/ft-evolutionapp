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
                Navigator.pushNamed(context, 'pushNamed');
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
          child: Column (
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
              Container(
                height: 65,
                margin: const EdgeInsets.only(
                    bottom: 10,
                    //top: 10,
                    left: 20,
                    right: 20),
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 20,
                  top: 10,
                ),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(242, 102, 5, 2),
                        Color.fromRGBO(242, 177, 5, 2)
                      ]),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Create new sesion',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle_outlined,
                          color: Colors.black,
                          size: 35,
                        )),
                  ],
                ),
              ),
              Container(
                height: 65,
                margin: const EdgeInsets.only(

                    //top: 10,
                    left: 20,
                    right: 20),
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 20,
                  top: 10,
                ),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(242, 102, 5, 2),
                          Color.fromRGBO(242, 177, 5, 2)
                        ]),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'View courses',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'courses_view');
                        },
                        icon: const Icon(
                          Icons.add_circle_outlined,
                          color: Colors.black,
                          size: 35,
                        )),
                  ],
                ),
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
