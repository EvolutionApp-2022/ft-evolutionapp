import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Evolution',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded, color: Colors.black,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.person, color: Colors.black,)
          )
        ],
      ),

      body: Column(
        children: [
          Text('Courses',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),
          ),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(35.0),
              children: [
                Container(
                  height: 60,
                  margin: EdgeInsets.only(
                    //bottom: 10,
                    //top: 10,
                  ),
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  child: Center(
                    child: Text('ALGEBRA',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(7, 53, 249, 2),
                            Color.fromRGBO(6, 174, 234, 2)
                          ]
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)
                      )
                  ),
                ),
                Container(
                  height: 90,
                  margin: EdgeInsets.only(
                    bottom: 10,
                    //top: 10,
                  ),
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Lorem Ipsum is simply dummy sample text of the printing.',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_circle_right, color: Colors.black, size: 35,)
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)
                      ),
                      border: Border.all(
                          color: Colors.black
                      )
                  ),
                ),

                Container(
                  height: 60,
                  margin: EdgeInsets.only(
                    //bottom: 10,
                    //top: 10,
                  ),
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  child: Center(
                    child: Text('GEOMETRIA',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(7, 53, 249, 2),
                            Color.fromRGBO(6, 174, 234, 2)
                          ]
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)
                      )
                  ),
                ),
                Container(
                  height: 90,
                  margin: EdgeInsets.only(
                    bottom: 10,
                    //top: 10,
                  ),
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Lorem Ipsum is simply dummy sample text of the printing.',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_circle_right, color: Colors.black, size: 35,)
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)
                      ),
                      border: Border.all(
                          color: Colors.black
                      )
                  ),
                ),

                Container(
                  height: 60,
                  margin: EdgeInsets.only(
                    //bottom: 10,
                    //top: 10,
                  ),
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  child: Center(
                    child: Text('LITERATURA',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(7, 53, 249, 2),
                            Color.fromRGBO(6, 174, 234, 2)
                          ]
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)
                      )
                  ),
                ),
                Container(
                  height: 90,
                  margin: EdgeInsets.only(
                    bottom: 10,
                    //top: 10,
                  ),
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Lorem Ipsum is simply dummy sample text of the printing.',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_circle_right, color: Colors.black, size: 35,)
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)
                      ),
                      border: Border.all(
                          color: Colors.black
                      )
                  ),
                ),

                Container(
                  height: 60,
                  margin: EdgeInsets.only(
                    //bottom: 10,
                    //top: 10,
                  ),
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  child: Center(
                    child: Text('TRIGONOMETRIA',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(7, 53, 249, 2),
                            Color.fromRGBO(6, 174, 234, 2)
                          ]
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)
                      )
                  ),
                ),
                Container(
                  height: 90,
                  margin: EdgeInsets.only(
                    bottom: 10,
                    //top: 10,
                  ),
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Lorem Ipsum is simply dummy sample text of the printing.',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_circle_right, color: Colors.black, size: 35,)
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)
                      ),
                      border: Border.all(
                          color: Colors.black
                      )
                  ),
                ),

                Container(
                  height: 60,
                  margin: EdgeInsets.only(
                    //bottom: 10,
                    //top: 10,
                  ),
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  child: Center(
                    child: Text('QUIMICA',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(7, 53, 249, 2),
                            Color.fromRGBO(6, 174, 234, 2)
                          ]
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)
                      )
                  ),
                ),
                Container(
                  height: 90,
                  margin: EdgeInsets.only(
                    bottom: 10,
                    //top: 10,
                  ),
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 20,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Lorem Ipsum is simply dummy sample text of the printing.',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_circle_right, color: Colors.black, size: 35,)
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)
                      ),
                      border: Border.all(
                          color: Colors.black
                      )
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
