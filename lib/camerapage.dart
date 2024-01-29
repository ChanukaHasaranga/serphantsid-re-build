import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite_v2/tflite_v2.dart';

class camerapage extends StatefulWidget {
  const camerapage({super.key});

  @override
  State<camerapage> createState() => _camerapageState();
}

class _camerapageState extends State<camerapage> {
  File ? _selectedimage;

var _recognitions;
  var v = "";

void initState(){

super.initState();
loadmodel().then((value){

setState(() {
  
});


}




);


}

loadmodel() async{

  await Tflite.loadModel(
    
    model:"assetss/model_unquant.tflite",
    labels: "assetss/labels.txt"
    
    
    
    );

  print("Model loaded successfully!");

}

classifyimage(File selectedimage) async{

var output=await Tflite.runModelOnImage(
  
  path: selectedimage.path,
  numResults: 2,
  threshold: 0.5,
  imageMean: 127.5,
  imageStd: 127.5
  
  
  
  );

  setState(() {
_recognitions=output;
    v = _recognitions.map((recognition) => recognition['label']).join(", ");

  });
print(_recognitions);
}













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
            child:_selectedimage!=null ? Image.file(_selectedimage!,fit: BoxFit.cover,):Center(child: Text("Please capture the image")),






          
            
            
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
            child: Center(child: Text(v,style: TextStyle(fontSize: 23,color: const Color.fromARGB(255, 18, 52, 19),fontWeight: FontWeight.bold))),
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

    classifyimage(_selectedimage!);


  }
}