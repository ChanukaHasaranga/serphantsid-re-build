import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class camerapage extends StatefulWidget {
  const camerapage({super.key});

  @override
  State<camerapage> createState() => _camerapageState();
}

class _camerapageState extends State<camerapage> {
  File ? _selectedimage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
appBar: AppBar(
  title: Center(child:Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assetss/SERPENTS!D.png"),fit: BoxFit.contain),),height: 38,width: 195,),),
backgroundColor: Color.fromARGB(255, 56, 124, 7),
),

body: SafeArea(
  child:SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: GestureDetector(
              onTap: () {
                pickerimagefromcamera();
              },
              child: Container(
                            height: 43,
                            width: 48,
                            decoration: BoxDecoration(
                              image: DecorationImage(image:AssetImage("assetss/camera.png"))
                            ),
                          ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(27, 40, 27, 0),
          child: Container(
            height: 367,
            width: double.infinity,
            decoration: BoxDecoration(
        color: Colors.white,
              border: Border.all(color: const Color.fromARGB(255, 23, 75, 25)),
              boxShadow: [BoxShadow(
                blurRadius: 2,
              )]
            ),
            child: _selectedimage!=null ? Image.file(_selectedimage!,fit: BoxFit.cover,):Center(child: Text("Please capture the image")),
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(25, 30, 26, 0),
          child: Container(
            height: 84,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Colors.white,
              boxShadow: [BoxShadow(
                blurRadius:2
              )]
            ),
          ),
        )
      ],
    ),
  ) 
),

    );
  }
  Future pickerimagefromcamera() async{
    final returendimage= await ImagePicker().pickImage(source:ImageSource.camera);
if (returendimage==null) {
  return;
  
}
    setState(() {
      _selectedimage=File(returendimage!.path);
    });

  }
}