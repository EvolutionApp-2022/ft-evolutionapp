import 'package:flutter/material.dart';

class CardButtonCustom extends StatelessWidget {
  final String textHeader;
  final String textContent;
  final IconData customIcon;
  final Color customColor1;
  final Color customColor2;
  final String pushNamed;

  const CardButtonCustom({
    Key? key,
    required this.textHeader,
    required this.textContent,
    required this.customIcon,
    required this.customColor1,
    required this.customColor2,
    required this.pushNamed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 115,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color.fromARGB(253, 173, 173, 173),
          ),
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 1.8)],
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: TextButton(
        style:
            ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.all(0))),
        onPressed: () {
          pushNamed != '' ? Navigator.pushNamed(context, pushNamed) : null;
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: const EdgeInsets.all(0),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Text(
                    textHeader,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 27),
                  ),
                ),
                width: double.maxFinite,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4)),
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        customColor1,
                        customColor2,
                      ]),
                )),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 240,
                    child: Text(
                      textContent,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Icon(
                    customIcon,
                    color: Colors.black,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
