import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class ProfileStudentView extends StatelessWidget {
  const ProfileStudentView({Key? key}) : super(key: key);

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
              onPressed: () {},
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
            children: [
              Container(
                child: Image(
                  image: AssetImage('assets/img/profile_f.png'),
                  width: 250,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Student',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 140,
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      child: Column(
                        children: [
                          Expanded(
                            //TODO: Modificar la info
                            child: Text(
                              'Name: ' + 'Name of the student',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Last Name: ' + 'Last name of the student',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Email: ' + 'Email of the student',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'School: ' + 'School where Raaaa',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '100',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Points',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              /*Container(
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
                      //TODO: Aquí utilizar un widget
                      child: Text('Log out',
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(0, 0, 0, 0.8),
                        Color.fromRGBO(0, 0, 0, 0.8)
                      ]
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              */
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      ButtonCustom(
                        sampleText: 'Log Out',
                        pushNamed: 'home_view',
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
