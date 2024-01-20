import 'package:flutter/material.dart';

class scontainers extends StatelessWidget {
String imagepath;
String txt;

   scontainers({
    required this.imagepath,
    required this.txt,
    
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Padding(
       padding: const EdgeInsets.only(top: 7),
      child: Container(
        height: 66,
        width: 66,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image:AssetImage(imagepath),fit: BoxFit.cover)
        ),
      ),
    ),
    Text(txt,style: TextStyle(fontSize: 12,color: const Color.fromARGB(255, 6, 45, 7),fontFamily: "Poppins"),),
     Padding(
       padding: const EdgeInsets.only(top: 7),
       child: Container(
        height: 19,
        width: 57,
        decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage("assetss/Group.png"),fit: BoxFit.cover)
        ),
         ),
     ),
  ],
),

    );
  }
}