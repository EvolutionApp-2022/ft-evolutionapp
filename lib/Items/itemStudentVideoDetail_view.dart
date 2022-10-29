import 'package:flutter/material.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class ItemStudentVideoDetailView extends StatefulWidget {
  const ItemStudentVideoDetailView({Key? key}) : super(key: key);

  @override
  State<ItemStudentVideoDetailView> createState() =>
      _ItemStudentVideoDetailViewState();
}

class _ItemStudentVideoDetailViewState
    extends State<ItemStudentVideoDetailView> {
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
                const Text(
                  'Sample Title Item',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image(
                    image: AssetImage('assets/img/videoImage.png'),
                    width: double.maxFinite,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Student welcome to the main menu of the application and enjoy learning with the teachers of your educational institution, menu of the application and enjoy learning with the teachers of your educational institution, menu of the application and enjoy learning with the teachers of your educational institution.",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          '150',
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
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonColorCustom(
                  customText: 'COMPLETED',
                  customColor1: Color.fromARGB(232, 94, 218, 45),
                  customColor2: Color.fromARGB(225, 228, 215, 33),
                  pushNamed: 'pushNamed',
                  addIcon: true,
                  customHigh: 60,
                  customIcon: Icons.check_circle,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
