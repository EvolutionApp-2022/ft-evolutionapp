import 'package:flutter/material.dart';

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
        title: Text('Post',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded, color: Colors.black,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0,20,240,0),
              child: Text("Title", style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(48,10,48,0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Title here",
                    labelText: "Title",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0,20,160,0),
              child: Text("Description", style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(48,10,48,0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Description here",
                    labelText: "Description",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                maxLines: 10,
              ),
            ),

            SizedBox(height: 150,),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    textStyle: TextStyle(fontSize: 20)
                ),
                onPressed: (){},
                child: Text("Post Announcement",)
            ),

          ],
        ),
      ),

    );
  }
}
