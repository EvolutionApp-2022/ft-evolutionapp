import 'package:flutter/material.dart';

class ItemStudentView extends StatelessWidget {
  const ItemStudentView({Key? key}) : super(key: key);

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

      body: Center(
        child: Container(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                //TODO: Modificar la posición
                child: Text('Items',
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
                      height: 75,
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
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                //TODO: Modificar la posición
                                text: 'Title of the item   ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              TextSpan(
                                text: '📃', // emoji characters
                                style: TextStyle(
                                  fontFamily: 'EmojiOne',
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(255, 255, 255, 2),
                                Color.fromRGBO(255, 255, 255, 2)
                              ]
                          ),

                          boxShadow: [
                            new BoxShadow(
                              color: Colors.black87,
                              offset: new Offset(1, 5),
                              blurRadius: 10,
                            )
                          ],

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
                          Container(
                            height: 90,
                            child: Column(
                              children: [
                                Expanded(
                                  //TODO: Modificar la info
                                  child: Text('INFO:',
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
                          IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'itemStudentDocumentDetail_view');
                              },
                              icon: Icon(Icons.remove_red_eye, color: Colors.black, size: 35,)
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)
                        ),

                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 2),
                              Color.fromRGBO(255, 255, 255, 2)
                            ]
                        ),

                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black87,
                            offset: new Offset(1, 5),
                            blurRadius: 10,
                          )
                        ],
                      ),
                    ),

                    Container(
                      height: 75,
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
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                //TODO: Modificar la posición
                                text: 'Title of the item   ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              TextSpan(
                                text: '🎥', // emoji characters
                                style: TextStyle(
                                  fontFamily: 'EmojiOne',
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(255, 255, 255, 2),
                                Color.fromRGBO(255, 255, 255, 2)
                              ]
                          ),

                          boxShadow: [
                            new BoxShadow(
                              color: Colors.black87,
                              offset: new Offset(1, 5),
                              blurRadius: 10,
                            )
                          ],

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
                          Container(
                            height: 90,
                            child: Column(
                              children: [
                                Expanded(
                                  //TODO: Modificar la info
                                  child: Text('INFO:',
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
                          IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'itemStudentVideoDetail_view');
                              },
                              icon: Icon(Icons.remove_red_eye, color: Colors.black, size: 35,)
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)
                        ),

                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 2),
                              Color.fromRGBO(255, 255, 255, 2)
                            ]
                        ),

                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black87,
                            offset: new Offset(1, 5),
                            blurRadius: 10,
                          )
                        ],
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
