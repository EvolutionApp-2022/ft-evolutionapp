import 'package:flutter/material.dart';
import 'package:ft_evolution_app/Announcement/post_view.dart';
import 'package:ft_evolution_app/providers/provider_announcements.dart';
import 'package:ft_evolution_app/widgets/button_color_custom_p.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class AnnouncementStudentView extends StatefulWidget {
  final int sectionId;

  const AnnouncementStudentView(this.sectionId, {Key? key}) : super(key: key);

  @override
  State<AnnouncementStudentView> createState() =>
      _AnnouncementStudentViewState();
}

class _AnnouncementStudentViewState extends State<AnnouncementStudentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Announcement',
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
                // ========== PERFIL DEL USUARIO ==========
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Announcements',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat'),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: FutureBuilder(
                initialData: [],
                future:
                    AnnouncementsProvider.getAllAnnouncements(widget.sectionId),
                builder: (context, AsyncSnapshot<List> snapshot) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      var announcement = snapshot.data![index];
                      return CardButtonCustom(
                          textHeader: announcement.title,
                          textContent: announcement.description,
                          customIcon: Icons.announcement,
                          customColor1: Color.fromARGB(255, 0, 0, 3),
                          customColor2: Color.fromARGB(255, 121, 121, 121),
                          pushNamed: '');
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
