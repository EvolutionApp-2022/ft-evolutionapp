import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          const Text(
            'Courses',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(35.0),
              children: [
                Container(
                  height: 60,
                  margin: const EdgeInsets.only(
                      //bottom: 10,
                      //top: 10,
                      ),
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(7, 53, 249, 2),
                            Color.fromRGBO(6, 174, 234, 2)
                          ]),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: const Center(
                    child: Text(
                      'ALGEBRA',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 90,
                  margin: const EdgeInsets.only(
                    bottom: 10,
                    //top: 10,
                  ),
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Lorem Ipsum is simply dummy sample text of the printing.',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'course_detail_view');
                          },
                          icon: const Icon(
                            Icons.arrow_circle_right,
                            color: Colors.black,
                            size: 35,
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  margin: const EdgeInsets.only(
                      //bottom: 10,
                      //top: 10,
                      ),
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(7, 53, 249, 2),
                            Color.fromRGBO(6, 174, 234, 2)
                          ]),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: const Center(
                    child: Text(
                      'GEOMETRIA',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 90,
                  margin: const EdgeInsets.only(
                    bottom: 10,
                    //top: 10,
                  ),
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Lorem Ipsum is simply dummy sample text of the printing.',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_circle_right,
                            color: Colors.black,
                            size: 35,
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  margin: const EdgeInsets.only(
                      //bottom: 10,
                      //top: 10,
                      ),
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(7, 53, 249, 2),
                            Color.fromRGBO(6, 174, 234, 2)
                          ]),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: const Center(
                    child: Text(
                      'LITERATURA',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 90,
                  margin: const EdgeInsets.only(
                    bottom: 10,
                    //top: 10,
                  ),
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Lorem Ipsum is simply dummy sample text of the printing.',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_circle_right,
                            color: Colors.black,
                            size: 35,
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  margin: const EdgeInsets.only(
                      //bottom: 10,
                      //top: 10,
                      ),
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(7, 53, 249, 2),
                            Color.fromRGBO(6, 174, 234, 2)
                          ]),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: const Center(
                    child: Text(
                      'TRIGONOMETRIA',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 90,
                  margin: const EdgeInsets.only(
                    bottom: 10,
                    //top: 10,
                  ),
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Lorem Ipsum is simply dummy sample text of the printing.',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_circle_right,
                            color: Colors.black,
                            size: 35,
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  margin: const EdgeInsets.only(
                      //bottom: 10,
                      //top: 10,
                      ),
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(7, 53, 249, 2),
                            Color.fromRGBO(6, 174, 234, 2)
                          ]),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: const Center(
                    child: Text(
                      'QUIMICA',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 90,
                  margin: const EdgeInsets.only(
                    bottom: 10,
                    //top: 10,
                  ),
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Lorem Ipsum is simply dummy sample text of the printing.',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_circle_right,
                            color: Colors.black,
                            size: 35,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
