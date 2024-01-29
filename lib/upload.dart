import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite_v2/tflite_v2.dart';

class upload extends StatefulWidget {
  const upload({super.key});

  @override
  State<upload> createState() => _uploadState();
}



class _uploadState extends State<upload> {


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

backgroundColor: const Color.fromARGB(255, 255, 255, 255),
appBar:  AppBar(
      title: Center(child:Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assetss/SERPENTS!D.png"),fit: BoxFit.contain),),height: 38,width: 195,),),
backgroundColor: Color.fromARGB(255, 56, 124, 7),
     ),
     body: SafeArea(
      
      
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(34, 98, 34, 0),
              child: Container(
                height: 459,
                width: double.infinity,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: Colors.transparent,
                border: Border.all(color: const Color.fromARGB(255, 49, 129, 52))
               ),
            

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Upload your pic",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 19, 68, 21),fontFamily:"Poppins"),),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        
                        context: context, 
                        
                        builder:(context) => AlertDialog(
                          
                          actions: [
                            TextButton(
                              
                              onPressed:() {
                                Navigator.of(context).pop();
                              }, 
                              
                              
                              child: Text("close")
                              )
                          ],
                          
                          title: Text(
    (v),
  ),
                          content: _selectedimage !=null ? Image.file(_selectedimage!):Text("please Select the image"),
                        ),
                        
                        
                        );

                        
                        pickimagefromgallery();
                      
                    },
                    child: Container(
                      height: 43,
                      width: 48,
                      decoration: BoxDecoration(
                        image: DecorationImage(image:AssetImage("assetss/upload.png"))
                      ),
                    ),
                  ),
                )
              ],
            ),
            
              ),
            )
          ],
        ),
      )
     
     
     
     
     ),
    );
  }
  Future pickimagefromgallery() async{

    final returnedimage=await ImagePicker().pickImage(source:ImageSource.gallery);

if (returnedimage==null) {
  return;
}
    setState(() {
      _selectedimage=File(returnedimage!.path);

    });

classifyimage(_selectedimage!);

  }
}