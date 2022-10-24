import 'package:flutter/material.dart';

class CardAnnouncementCustom extends StatelessWidget {
  final String title;
  final String description;

  const CardAnnouncementCustom({Key? key, required this.title,
    required this.description,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black,
            )
        ),
        child: Column(
          children: [

            SizedBox(height: 10,),

            Text(title, style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),),

            Padding(
              padding: const EdgeInsets.fromLTRB(13,20,80,10),
              child: Text(description, style: TextStyle(
                fontSize: 14,
              ),),
            ),

          ],
        ),
      ),
    );
  }
}
