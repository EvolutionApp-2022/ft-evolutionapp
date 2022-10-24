import 'package:flutter/material.dart';

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
        title: Text('Evolution',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),
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
              icon: Icon(Icons.person, color: Colors.black,)
          )
        ],
      ),

      //Contenido
      body:
      Center(
        child: Container(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Welcome!',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        //TODO: Modificar la posición
                        text: 'Hi Alumno Name',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      TextSpan(
                        text: '✌️', // emoji characters
                        style: TextStyle(
                          fontFamily: 'EmojiOne',
                          fontSize: 20.0,
                        ),
                      ),
                    ],
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

              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                //TODO: Modificar la posición
                child: Text('Courses',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                  ),
                ),
              ),

              SizedBox(
                height: 5,
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


                    //TODO:Esto puede ser un widget
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
                          Container(
                            height: 90,
                            child: Column(
                              children: [
                                Expanded(
                                  //TODO: Modificar la info
                                  child: Text('INFO',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text('Teacher: ',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text('Section: ',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //TODO: Esto tiene que ser un widget
                          IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'itemsStudent_view');
                              },
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
                    //TODO:Esto puede ser un widget
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
                          Container(
                            height: 90,
                            child: Column(
                              children: [
                                Expanded(
                                  //TODO: Modificar la info
                                  child: Text('INFO',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text('Teacher: ',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text('Section: ',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //TODO: Esto tiene que ser un widget
                          IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'itemsStudent_view');
                              },
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
                    //TODO:Esto puede ser un widget
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
                          Container(
                            height: 90,
                            child: Column(
                              children: [
                                Expanded(
                                  //TODO: Modificar la info
                                  child: Text('INFO',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text('Teacher: ',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text('Section: ',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //TODO: Esto tiene que ser un widget
                          IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'itemsStudent_view');
                              },
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
