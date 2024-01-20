import 'package:flutter/material.dart';
import 'package:serphantsid/homepagecontainers/hcontainers.dart';

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
)
    ],

  ),

),



),


    );
  }
}