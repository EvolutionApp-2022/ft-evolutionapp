import 'package:flutter/material.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class DashboardStudentView extends StatefulWidget {
  const DashboardStudentView({Key? key}) : super(key: key);

  @override
  State<DashboardStudentView> createState() => _DashboardStudentView();
}

class _DashboardStudentView extends State<DashboardStudentView> {
  //var parser = EmojiParser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Evolution',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        /*leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded, color: Colors.black,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),*/
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

      //Contenido
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Montserrat'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Hello Student! 👋',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Student welcome to the main menu of the application and enjoy learning with the teachers of your educational institution.",
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Courses',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat'),
            ),
            SizedBox(
              height: 10,
            ),
            CardButtonCustom(
              customColor1: Color.fromARGB(255, 207, 0, 69),
              customColor2: Color.fromARGB(255, 151, 0, 221),
              customIcon: Icons.ac_unit,
              pushNamed: 'itemsStudent_view',
              textContent: 'sample content',
              textHeader: 'TRIGONOMETRIA',
            ),
            SizedBox(
              height: 10,
            ),
            CardButtonCustom(
              customColor1: Color.fromARGB(255, 207, 0, 69),
              customColor2: Color.fromARGB(255, 151, 0, 221),
              customIcon: Icons.ac_unit,
              pushNamed: 'itemsStudent_view',
              textContent: 'sample content',
              textHeader: 'TRIGONOMETRIA',
            ),
            SizedBox(
              height: 10,
            ),
            CardButtonCustom(
              customColor1: Color.fromARGB(255, 207, 0, 69),
              customColor2: Color.fromARGB(255, 151, 0, 221),
              customIcon: Icons.ac_unit,
              pushNamed: 'itemsStudent_view',
              textContent: 'sample content',
              textHeader: 'TRIGONOMETRIA',
            ),

            // Container(
            //   height: 60,
            //   margin: EdgeInsets.only(
            //       //bottom: 10,
            //       //top: 10,
            //       ),
            //   padding: EdgeInsets.only(
            //     left: 20,
            //     right: 20,
            //     bottom: 20,
            //     top: 20,
            //   ),
            //   child: Center(
            //     child: Text(
            //       'ALGEBRA',
            //       style: TextStyle(
            //           fontSize: 20,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.white),
            //     ),
            //   ),
            //   decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //           begin: Alignment.bottomLeft,
            //           end: Alignment.bottomRight,
            //           colors: [
            //             Color.fromRGBO(7, 53, 249, 2),
            //             Color.fromRGBO(6, 174, 234, 2)
            //           ]),
            //       borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(15),
            //           topRight: Radius.circular(15))),
            // ),

            // //TODO:Esto puede ser un widget
            // Container(
            //   height: 90,
            //   margin: EdgeInsets.only(
            //     bottom: 10,
            //     //top: 10,
            //   ),
            //   padding: EdgeInsets.only(
            //     left: 20,
            //     right: 20,
            //     bottom: 20,
            //     top: 20,
            //   ),
            //   child: Row(
            //     children: [
            //       Container(
            //         height: 90,
            //         child: Column(
            //           children: [
            //             Expanded(
            //               //TODO: Modificar la info
            //               child: Text(
            //                 'INFO',
            //                 style:
            //                     TextStyle(fontSize: 15, color: Colors.black),
            //               ),
            //             ),
            //             Expanded(
            //               child: Text(
            //                 'Teacher: ',
            //                 style: TextStyle(
            //                   fontSize: 10,
            //                   color: Colors.black,
            //                 ),
            //               ),
            //             ),
            //             Expanded(
            //               child: Text(
            //                 'Section: ',
            //                 style: TextStyle(
            //                   fontSize: 10,
            //                   color: Colors.black,
            //                 ),
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //       //TODO: Esto tiene que ser un widget
            //       IconButton(
            //           onPressed: () {
            //             Navigator.pushNamed(context, 'itemsStudent_view');
            //           },
            //           icon: Icon(
            //             Icons.arrow_circle_right,
            //             color: Colors.black,
            //             size: 35,
            //           ))
            //     ],
            //   ),
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.only(
            //           bottomLeft: Radius.circular(15),
            //           bottomRight: Radius.circular(15)),
            //       border: Border.all(color: Colors.black)),
            // ),

            // Container(
            //   height: 60,
            //   margin: EdgeInsets.only(
            //       //bottom: 10,
            //       //top: 10,
            //       ),
            //   padding: EdgeInsets.only(
            //     left: 20,
            //     right: 20,
            //     bottom: 20,
            //     top: 20,
            //   ),
            //   child: Center(
            //     child: Text(
            //       'GEOMETRIA',
            //       style: TextStyle(
            //           fontSize: 20,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.white),
            //     ),
            //   ),
            //   decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //           begin: Alignment.bottomLeft,
            //           end: Alignment.bottomRight,
            //           colors: [
            //             Color.fromRGBO(7, 53, 249, 2),
            //             Color.fromRGBO(6, 174, 234, 2)
            //           ]),
            //       borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(15),
            //           topRight: Radius.circular(15))),
            // ),
            // //TODO:Esto puede ser un widget
            // Container(
            //   height: 90,
            //   margin: EdgeInsets.only(
            //     bottom: 10,
            //     //top: 10,
            //   ),
            //   padding: EdgeInsets.only(
            //     left: 20,
            //     right: 20,
            //     bottom: 20,
            //     top: 20,
            //   ),
            //   child: Row(
            //     children: [
            //       Container(
            //         height: 90,
            //         child: Column(
            //           children: [
            //             Expanded(
            //               //TODO: Modificar la info
            //               child: Text(
            //                 'INFO',
            //                 style:
            //                     TextStyle(fontSize: 15, color: Colors.black),
            //               ),
            //             ),
            //             Expanded(
            //               child: Text(
            //                 'Teacher: ',
            //                 style: TextStyle(
            //                   fontSize: 10,
            //                   color: Colors.black,
            //                 ),
            //               ),
            //             ),
            //             Expanded(
            //               child: Text(
            //                 'Section: ',
            //                 style: TextStyle(
            //                   fontSize: 10,
            //                   color: Colors.black,
            //                 ),
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //       //TODO: Esto tiene que ser un widget
            //       IconButton(
            //           onPressed: () {
            //             Navigator.pushNamed(context, 'itemsStudent_view');
            //           },
            //           icon: Icon(
            //             Icons.arrow_circle_right,
            //             color: Colors.black,
            //             size: 35,
            //           ))
            //     ],
            //   ),
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.only(
            //           bottomLeft: Radius.circular(15),
            //           bottomRight: Radius.circular(15)),
            //       border: Border.all(color: Colors.black)),
            // ),

            //   Container(
            //     height: 60,
            //     margin: EdgeInsets.only(
            //         //bottom: 10,
            //         //top: 10,
            //         ),
            //     padding: EdgeInsets.only(
            //       left: 20,
            //       right: 20,
            //       bottom: 20,
            //       top: 20,
            //     ),
            //     child: Center(
            //       child: Text(
            //         'LITERATURA',
            //         style: TextStyle(
            //             fontSize: 20,
            //             fontWeight: FontWeight.bold,
            //             color: Colors.white),
            //       ),
            //     ),
            //     decoration: BoxDecoration(
            //         gradient: LinearGradient(
            //             begin: Alignment.bottomLeft,
            //             end: Alignment.bottomRight,
            //             colors: [
            //               Color.fromRGBO(7, 53, 249, 2),
            //               Color.fromRGBO(6, 174, 234, 2)
            //             ]),
            //         borderRadius: BorderRadius.only(
            //             topLeft: Radius.circular(15),
            //             topRight: Radius.circular(15))),
            //   ),
            //   //TODO:Esto puede ser un widget
            //   Container(
            //     height: 90,
            //     margin: EdgeInsets.only(
            //       bottom: 10,
            //       //top: 10,
            //     ),
            //     padding: EdgeInsets.only(
            //       left: 20,
            //       right: 20,
            //       bottom: 20,
            //       top: 20,
            //     ),
            //     child: Row(
            //       children: [
            //         Container(
            //           height: 90,
            //           child: Column(
            //             children: [
            //               Expanded(
            //                 //TODO: Modificar la info
            //                 child: Text(
            //                   'INFO',
            //                   style:
            //                       TextStyle(fontSize: 15, color: Colors.black),
            //                 ),
            //               ),
            //               Expanded(
            //                 child: Text(
            //                   'Teacher: ',
            //                   style: TextStyle(
            //                     fontSize: 10,
            //                     color: Colors.black,
            //                   ),
            //                 ),
            //               ),
            //               Expanded(
            //                 child: Text(
            //                   'Section: ',
            //                   style: TextStyle(
            //                     fontSize: 10,
            //                     color: Colors.black,
            //                   ),
            //                 ),
            //               )
            //             ],
            //           ),
            //         ),
            //         //TODO: Esto tiene que ser un widget
            //         IconButton(
            //             onPressed: () {
            //               Navigator.pushNamed(context, 'itemsStudent_view');
            //             },
            //             icon: Icon(
            //               Icons.arrow_circle_right,
            //               color: Colors.black,
            //               size: 35,
            //             ))
            //       ],
            //     ),
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.only(
            //             bottomLeft: Radius.circular(15),
            //             bottomRight: Radius.circular(15)),
            //         border: Border.all(color: Colors.black)),
            //   )
          ],
        ),
      ),
    );
  }
}
