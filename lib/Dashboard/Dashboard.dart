import 'package:flutter/material.dart';
import 'package:ft_evolution_app/Courses/Courses.dart';
import 'package:ft_evolution_app/Profile/Profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile())
                );
              },
              icon: Icon(Icons.person, color: Colors.black,)
          )
        ],
      ),

      body: Center(
        child: Container(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Hi Docente Name',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Lorem ipsum dolor sit amet,consectetur adipiscing elit.Nullam vestibulum.',
                  style: TextStyle(
                      fontSize: 17
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Actions',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ),
              Container(
                height: 65,
                margin: EdgeInsets.only(
                  bottom: 10,
                  //top: 10,
                  left: 20,
                  right: 20
                ),
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 20,
                  top: 10,
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Text('Create new sesion',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.add_circle_outlined, color: Colors.black, size: 35,)
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(242, 102, 5, 2),
                          Color.fromRGBO(242, 177, 5, 2)
                        ]
                    ),
                    borderRadius: BorderRadius.circular(15),
                ),
              ),
              Container(
                height: 65,
                margin: EdgeInsets.only(
                    bottom: 10,
                    //top: 10,
                    left: 20,
                    right: 20
                ),
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 20,
                  top: 10,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text('View courses',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Courses())
                          );
                        },
                        icon: Icon(Icons.add_circle_outlined, color: Colors.black, size: 35,)
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(242, 102, 5, 2),
                        Color.fromRGBO(242, 177, 5, 2)
                      ]
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Courses',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ),

              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(25.0),
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
