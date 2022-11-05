import 'package:flutter/material.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class CreateSectionView extends StatefulWidget {
  const CreateSectionView({Key? key}) : super(key: key);

  @override
  State<CreateSectionView> createState() => _CreateSectionViewState();
}

class _CreateSectionViewState extends State<CreateSectionView> {
  String? dropDownValue;

  List<String> listItems = [
    "Algebra",
    "Aritmetica",
    "Geometria",
    "Literatura",
    "Biologia",
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
                onPressed: () {
                  Navigator.pushNamed(context, 'profile_view');
                },
                icon: const Icon(
                  Icons.person,
                  color: Colors.black,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Section',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(children: [
                    DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Courses',
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                        ),
                        value: dropDownValue,
                        items: listItems
                            .map((item) => DropdownMenuItem<String>(
                                value: item, child: Text(item)))
                            .toList(),
                        onChanged: (item) =>
                            setState(() => dropDownValue = item)),
                  ]),
                ),
                ButtonCustom(
                    sampleText: 'Create Section', pushNamed: 'home_view')
              ]),
        ));

    // Container(
    //     padding: const EdgeInsets.all(20),
    //     child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.stretch,
    //         children: [
    //           Text(
    //             'CREATE SECTION',
    //             style: TextStyle(
    //                 color: Colors.black,
    //                 fontWeight: FontWeight.bold,
    //                 fontSize: 20),
    //           ),
    //           SizedBox(height: 10),
    //           DropdownButtonFormField<String>(
    //               decoration: InputDecoration(
    //                 labelText: 'Courses',
    //                 isDense: true,
    //                 border: OutlineInputBorder(
    //                   borderRadius: BorderRadius.all(Radius.circular(5)),
    //                 ),
    //               ),
    //               value: dropDownValue,
    //               items: listItems
    //                   .map((item) => DropdownMenuItem<String>(
    //                       value: item, child: Text(item)))
    //                   .toList(),
    //               onChanged: (item) =>
    //                   setState(() => dropDownValue = item)),
    //           SizedBox(height: 10),
    //           ButtonCustom(
    //               sampleText: 'Create Section', pushNamed: 'home_view')
  }
}
