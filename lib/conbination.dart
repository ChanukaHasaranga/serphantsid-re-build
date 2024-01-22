import 'package:flutter/material.dart';
import 'package:serphantsid/bottomnavigationbar.dart';

class conbination extends StatelessWidget {
  const conbination({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor:  Color.fromARGB(255, 56, 124, 7),
        title: Center(child:Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assetss/SERPENTS!D.png"),fit: BoxFit.contain),),height: 38,width: 195,),),


),
body: SafeArea(
  
  child:Stack(

    children: [

       Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            
            image: AssetImage("assetss/background3.png"),
          
          fit: BoxFit.cover
          )
        ),
       ),
       Padding(
         padding: const EdgeInsets.fromLTRB(18, 40, 18, 0),
         child: GestureDetector(
          onTap: () {
            
          },
           child: Container(
            height: 234,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image:AssetImage("assetss/GettyImages.png"),fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(13),
              border: Border.all(color: Colors.white,width: 1.3),
         
            ),
           ),
         ),
       ),
        Positioned(
          right: 68,
          top: 246,
          child: Container(
            child: Center(child: Text("Venomous Snakes",style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: "Poppins"),)),
        height: 45,
        width: 261,
        decoration: BoxDecoration(

          border: Border.all(color:Colors.white,width: 1.3),
          borderRadius: BorderRadius.circular(23),
          color: const Color.fromARGB(255, 23, 67, 24)
        ),
          ),
        ),



        Padding(
         padding: const EdgeInsets.fromLTRB(18, 340, 18, 0),
         child: GestureDetector(
          onTap: () {
            
          },
           child: Container(
            height: 234,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image:AssetImage("assetss/2.png"),fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(13),
              border: Border.all(color: Colors.white,width: 1.3),
         
            ),
           ),
         ),
       ),
        Positioned(
          right: 68,
          top: 550,
          child: Container(
            child: Center(child: Text("Non Venomous Snakes",style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: "Poppins"),)),
        height: 45,
        width: 261,
        decoration: BoxDecoration(

          border: Border.all(color:Colors.white,width: 1.3),
          borderRadius: BorderRadius.circular(23),
          color: const Color.fromARGB(255, 23, 67, 24)
        ),
          ),
        ),



        



    ],




)),




    );
  }
}