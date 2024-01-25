import 'dart:math';

import 'package:flutter/material.dart';
import 'package:serphantsid/camerapage.dart';
import 'package:serphantsid/searchpage.dart';
import 'package:serphantsid/upload.dart';
import 'package:serphantsid/spashscreen.dart/spashscreen1.dart';

class hcontainers extends StatelessWidget {
  String imagepath;
  String txt;

   hcontainers({
    
    required this.imagepath,
    required this.txt,
    
    super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

        if (txt=="Upload") {

          Navigator.of(context).push(MaterialPageRoute(builder:(context) {
            return upload();
          },));
          
        }else if(txt=="Snap"){
           Navigator.of(context).push(MaterialPageRoute(builder:(context) {
            return camerapage();
          },));
          
          
        }else{

 Navigator.of(context).push(MaterialPageRoute(builder:(context) {
            return searchpage();
          },));
          


        }
        
      },
      
      child: Container(
       height: 116,
       width: 116,
       decoration: BoxDecoration(
        
      boxShadow: [BoxShadow(
        blurRadius: 3,
        color: const Color.fromARGB(255, 183, 183, 183)
      )],
      
        color: Colors.white,
        borderRadius:BorderRadius.circular(13),
        border: Border.all(color: Color.fromARGB(0, 163, 163, 163))
       ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
            decoration: BoxDecoration(
              image: DecorationImage(image:AssetImage(imagepath,),fit: BoxFit.contain,)
            
            ),
            height: 43,
            width: 48,
    
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(txt,style: TextStyle(fontSize: 24,color: const Color.fromARGB(255, 19, 86, 21),fontFamily: "Poppins"),),
          )
    
    
          ],
        ),
    
      ),
    );
  }
}