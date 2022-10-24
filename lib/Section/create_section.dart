import 'package:flutter/material.dart';

class CreateSectionView extends StatefulWidget {
  const CreateSectionView({Key? key}) : super(key: key);

  @override
  State<CreateSectionView> createState() => _CreateSectionViewState();
}

class _CreateSectionViewState extends State<CreateSectionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Evolution',
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: const Icon(
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
                icon: const Icon(
                  Icons.person,
                  color: Colors.black,
                ))
          ],
        ),
        body: Container(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: Column(children: const [
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'CREATE SECTION',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'Courses',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
            ])));
  }
}
