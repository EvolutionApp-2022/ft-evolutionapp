import 'package:flutter/material.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class SectionDetailView extends StatefulWidget {
  const SectionDetailView({Key? key}) : super(key: key);

  @override
  State<SectionDetailView> createState() => _SectionDetailViewState();
}

class _SectionDetailViewState extends State<SectionDetailView> {
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
                'Information',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ),
            Expanded(
              child: CardCustom(
                title: "MTF-001",
                textContent:
                    "Incididunt ut cillum dolore cupidatat aliquip non nisi ad.",
                color: [
                  Color.fromARGB(255, 0, 0, 0),
                  Color.fromARGB(255, 0, 0, 0),
                ],
                navigationPath: 'create_section_view',
              ),

              //buttons
            ),
          ]),
        ));
  }
}
