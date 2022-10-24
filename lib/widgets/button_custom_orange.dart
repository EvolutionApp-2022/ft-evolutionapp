import 'package:flutter/material.dart';

class ButtonCustomOrange extends StatelessWidget {
  final String sampleText;
  final String pushNamed;
  const ButtonCustomOrange({Key? key, required this.sampleText,
    required this.pushNamed,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(242, 101, 5, 1.0),
                Color.fromRGBO(242, 177, 5, 1.0),
              ]
          ),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(13,0,0,0),
              child: Text(sampleText, style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),

            IconButton(
              onPressed: (){
                Navigator.pushNamed(context, pushNamed);
              },
              icon: Icon(Icons.add_circle, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
