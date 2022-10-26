import 'package:flutter/material.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class CreateSectionView extends StatefulWidget {
  const CreateSectionView({Key? key}) : super(key: key);

  @override
  State<CreateSectionView> createState() => _CreateSectionViewState();
}

class _CreateSectionViewState extends State<CreateSectionView> {
  String? dropDownValue = 'Item 1';

  List<String> listItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

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
            padding: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'CREATE SECTION',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Courses',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      width: 50,
                      child: DropdownButtonFormField<String>(
                          value: dropDownValue,
                          items: listItems
                              .map((item) => DropdownMenuItem<String>(
                                  value: item, child: Text(item)))
                              .toList(),
                          onChanged: (item) =>
                              setState(() => dropDownValue = item)),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Courses',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      width: 50,
                      child: DropdownButtonFormField<String>(
                          value: dropDownValue,
                          items: listItems
                              .map((item) => DropdownMenuItem<String>(
                                  value: item, child: Text(item)))
                              .toList(),
                          onChanged: (item) =>
                              setState(() => dropDownValue = item)),
                    ),
                    SizedBox(height: 10),
                    ButtonCustom(
                        sampleText: 'Create Section', pushNamed: 'home_view')
                  ]),
            )));
  }
}
