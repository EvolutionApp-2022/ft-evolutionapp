import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final String title;
  final String textContent;
  final String? navigationPath;
  final List<Color>? color;

  const CardCustom(
      {required this.title,
      required this.textContent,
      this.navigationPath,
      this.color = const [
                       Color.fromRGBO(7, 53, 249, 2),
                       Color.fromRGBO(6, 174, 234, 2)
                    ],
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        navigationPath != null
            ? Navigator.pushNamed(context, navigationPath!)
            : null
      },
      child: ListView(
        padding: const EdgeInsets.only(left: 25, right: 25),
        children: [
          Container(
            padding: const EdgeInsets.all(13),
            decoration:  BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight,
                    colors: color!),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 1.8)],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    textContent,
                    style: const TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                Icon(
                  Icons.arrow_circle_right,
                  color: navigationPath != null ? Colors.black : Colors.white,
                  size: 35,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
