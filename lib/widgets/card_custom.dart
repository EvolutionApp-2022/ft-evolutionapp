import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(25.0),
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
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
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
                  'aa Lorem Ipsum is simply dummy sample text of the printing.',
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
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
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
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
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
      ],
    );
  }
}
