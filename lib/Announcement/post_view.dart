import 'package:flutter/material.dart';
import 'package:ft_evolution_app/providers/provider_announcements.dart';
import 'package:ft_evolution_app/widgets/text_form_field_announcement_custom.dart';

class PostView extends StatefulWidget {
  final int sectionId;

  const PostView(this.sectionId, {Key? key}) : super(key: key);

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {

  final title = TextEditingController();
  final description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Post',
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
        ),
        body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create announcement',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      children: [
                        TextFormFieldAnnouncementCustom(
                            var_hintText: "Sample title",
                            var_labelText: "Title",
                            var_keyboardType: TextInputType.text,
                            var_obscureText: false,
                            var_suffixIcon: Icons.announcement,
                            value: title),
                        const SizedBox(
                          height: 8,
                        ),
                        TextFormFieldAnnouncementCustom(
                          var_hintText: "Sample description",
                          var_labelText: "Description",
                          var_keyboardType: TextInputType.text,
                          var_obscureText: false,
                          var_suffixIcon: Icons.description,
                          var_lines: 5,
                          value: description,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 310,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                      ),
                      onPressed: () {
                        //Navigator.pushNamed(context, '');
                        setState(() {
                          AnnouncementsProvider.postAnnouncement(widget.sectionId, title.text, description.text).then((value) => print(value));
                        });
                        //print(title.text);
                        //print(description.text);
                      },
                      child: Text("Post Announcement"),
                    ),
                  )
                ])));
  }
}
