import 'package:flutter/material.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class PostView extends StatefulWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
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
                        TextFormFieldCustom(
                            var_hintText: "Sample title",
                            var_labelText: "Title",
                            var_keyboardType: TextInputType.text,
                            var_obscureText: false,
                            var_suffixIcon: Icons.announcement),
                        const SizedBox(
                          height: 8,
                        ),
                        TextFormFieldCustom(
                          var_hintText: "Sample description",
                          var_labelText: "Description",
                          var_keyboardType: TextInputType.text,
                          var_obscureText: false,
                          var_suffixIcon: Icons.description,
                          var_lines: 5,
                        ),
                      ],
                    ),
                  ),
                  ButtonCustom(
                      sampleText: "Post Announcement",
                      pushNamed: 'announcement_view')
                ])));
  }
}
