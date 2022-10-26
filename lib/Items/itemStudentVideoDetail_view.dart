import 'package:flutter/material.dart';

class ItemStudentVideoDetailView extends StatefulWidget {
  const ItemStudentVideoDetailView({Key? key}) : super(key: key);

  @override
  State<ItemStudentVideoDetailView> createState() => _ItemStudentVideoDetailViewState();
}

class _ItemStudentVideoDetailViewState extends State<ItemStudentVideoDetailView> {
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
                onPressed: (){
                  Navigator.pushNamed(context, 'profileStudent_view');
                },
                icon: Icon(Icons.person, color: Colors.black,)
            )
          ],
        ),

        body:
        Container(
          padding: const EdgeInsets.all(25.0),
          child: Column(
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

              Container(
                height: 200,
                child: Column(
                  children: const [
                    Image(
                      image: AssetImage('assets/img/videoImage.png'),
                      width: double.maxFinite,
                    ),
                  ],
                ),
              ),

              Container(
                height: 150,
                margin: EdgeInsets.only(
                  //bottom: 10,
                  //top: 10,
                ),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        //TODO: Modificar la posición
                        text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 17.0,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
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
                        text: 'Points that you can earn',
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

              Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: SizedBox(
                    height: 20,
                  )
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
                  left: 40,
                  right: 20,
                  bottom: 20,
                  top: 15,
                ),
                child: Row(
                  children: [
                    Expanded(
                      //TODO: Aquí configurar para que se mueva a otra vista
                      child: Text('Finished!!!',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.arrow_circle_right_sharp, color: Colors.black, size: 25,)
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(61, 224, 49, 1),
                        Color.fromRGBO(198, 217, 16, 1)
                      ]
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),

            ],
          ),
        )
    );
  }
}
