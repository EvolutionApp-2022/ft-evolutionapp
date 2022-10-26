import 'package:flutter/material.dart';
import 'package:ft_evolution_app/widgets/widgets.dart';

class ItemTeacherView extends StatefulWidget {
  const ItemTeacherView({Key? key}) : super(key: key);

  @override
  State<ItemTeacherView> createState() => _ItemTeacherViewState();
}

class _ItemTeacherViewState extends State<ItemTeacherView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Item',
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
        actions: [
          IconButton(
              onPressed: (){
                // ========== PERFIL DEL USUARIO ==========
              },
              icon: Icon(Icons.person, color: Colors.black,)
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(0,30,0,10),
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,200,10),
                child: Text("Actions", style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ),

              ButtonCustomOrange(sampleText: "Create New Item", pushNamed: 'itemTeacherPost_view'),

              SizedBox(height: 10,),

              Expanded(child: ListView(
                  children: [
                    SizedBox(height: 10,),

                    CardAnnouncementCustom(
                        title: "Material [VIDEO]",
                        description: "description"
                    ),
                    SizedBox(height: 10,),
                    CardAnnouncementCustom(
                        title: "Material [DOC]",
                        description: "description"
                    ),
                    SizedBox(height: 10,),
                    CardAnnouncementCustom(
                        title: "Material [DOC]",
                        description: "description"
                    ),
                    SizedBox(height: 10,),
                    CardAnnouncementCustom(
                        title: "Material [VIDEO]",
                        description: "description"
                    ),
                    SizedBox(height: 10,),
                    CardAnnouncementCustom(
                        title: "Material [DOC]",
                        description: "description"
                    ),
                    SizedBox(height: 10,),
                    CardAnnouncementCustom(
                        title: "Material [VIDEO]",
                        description: "description"
                    ),
                  ]
              )),
            ]
        ),
      ),
    );
  }
}
