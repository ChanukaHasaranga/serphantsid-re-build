import 'package:flutter/material.dart';

class splashscreen1 extends StatelessWidget {
  const splashscreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
    decoration: BoxDecoration(
    
    image:DecorationImage(image:AssetImage("assetss/splashscreen2.png"),fit:BoxFit.cover)
    
    
    
    ),
    
    child: Column(
     
    children: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130,vertical: 54),
      child:   Image.asset("assetss/logo2.png",width: 129,height: 129,),
    )
    
    
    ],
    
    
    
    
    ),
    
    
    
    
    
      ),
    );
  }
}