import 'package:flutter/material.dart';
import 'package:serphantsid/homepagecontainers/hcontainers.dart';
import 'package:serphantsid/serphantscontainers.dart/scontainers.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
     appBar: AppBar(
      title: Center(child:Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assetss/SERPENTS!D.png"),fit: BoxFit.contain),),height: 38,width: 195,),),
backgroundColor: Color.fromARGB(255, 56, 124, 7),

     ),

body: SafeArea(

child: SingleChildScrollView(

  child: Column(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(11, 54, 11, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          hcontainers(imagepath: 'assetss/upload.png', txt: 'Upload',),
          hcontainers(imagepath: 'assetss/camera.png', txt: 'Snap',),
          hcontainers(imagepath: 'assetss/sort.png', txt: 'Learn',)
          ],
          
        ),
      ),
Padding(
  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 11),
  child:   Text("Deadliest Serpents",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,fontFamily: "Poppins",color: const Color.fromARGB(255, 19, 86, 21)),),
),
Padding(
  padding: const EdgeInsets.fromLTRB(23, 0, 23, 0),
  child:   Row(
  
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    children: [
      scontainers(imagepath: 'assetss/snake.png', txt: 'King Cobra',),
      scontainers(imagepath: 'assetss/slkarait.png', txt: 'SL Krait',),
      scontainers(imagepath: 'assetss/russellviperpng.png', txt: 'Russell’s viper',),
      scontainers(imagepath: 'assetss/indian.png', txt: 'Indian krait',),


  
  
    ],
  
  ),
),
Padding(
  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 11),
  child:   Text("Common Serpent IDS",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,fontFamily: "Poppins",color: const Color.fromARGB(255, 19, 86, 21)),),
),
    ],

  ),

),



),


    );
  }
}