import 'package:flutter/material.dart';
import 'package:ft_evolution_app/models/items_response.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class ItemStudentDocumentDetailView extends StatefulWidget {
  final Item item;
  const ItemStudentDocumentDetailView(this.item, {Key? key}) : super(key: key);

  @override
  State<ItemStudentDocumentDetailView> createState() =>
      _ItemStudentDocumentDetailViewState();
}

class _ItemStudentDocumentDetailViewState
    extends State<ItemStudentDocumentDetailView> {
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
              onPressed: () {
                Navigator.pushNamed(context, 'profileStudent_view');
              },
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Item',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Montserrat'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Sample Title Item ${widget.item.name}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    widget.item.description,
                    textAlign: TextAlign.justify,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Student welcome to the main menu of the  your educational institution, menu of the application and enjoy learning with the teachers of your educational institution, menu of the application and enjoy learning with the teachers of your educational .",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                /*Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          '100',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Montserrat'),
                        ),
                        Text(
                          'points',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat'),
                        ),
                      ],
                    ),
                  ],
                ),*/
                SizedBox(
                  height: 30,
                ),
                /*ButtonColorCustom(
                  customText: 'COMPLETED',
                  customColor1: Color.fromARGB(232, 94, 218, 45),
                  customColor2: Color.fromARGB(225, 228, 215, 33),
                  pushNamed: 'pushNamed',
                  addIcon: true,
                  customHigh: 60,
                  customIcon: Icons.check_circle,
                ),*/

                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(232, 94, 218, 45),
                            Color.fromARGB(225, 228, 215, 33),
                          ])),
                  child: TextButton(
                    style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.all(0))),
                    onPressed: () {

                      },
                    child: Text("COMPLETED",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
