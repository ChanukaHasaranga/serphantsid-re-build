import 'package:flutter/material.dart';

class splashscreen1 extends StatelessWidget {
  PageController controller=PageController();
   splashscreen1({
    
    required this.controller,

    super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Container(
              decoration: BoxDecoration(
              
              image:DecorationImage(image:AssetImage("assetss/splashscreen2.png"),fit:BoxFit.cover)
              
              
              
              ),
              
              child: Column(
               
              children: [
              Padding(
          padding: const EdgeInsets.symmetric(horizontal: 130,vertical: 30),
          child:   Image.asset("assetss/logo2.png",width: 129,height: 129,),
              ),
              Padding(
          padding: const EdgeInsets.fromLTRB(25, 41, 25, 0),
          child: Container(
            height: 264,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28),
                bottomRight: Radius.circular(28)
              ),
              color: Color.fromARGB(33, 255, 255, 255)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(34, 64, 34, 0),
                  child: Text("!dentify various kinds of snakes around you.",style: TextStyle(fontSize: 36,fontWeight: FontWeight.normal,color: Colors.white,height:1.2),textAlign: TextAlign.left,),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(267, 5, 0, 0),
                  child: IconButton(onPressed:() {
                    controller.nextPage(
                      duration:Duration(microseconds: 500), 
                      curve: Curves.easeIn);
                    
                  }, icon: Icon(Icons.arrow_forward_ios_rounded,size: 38,color: Colors.white,)),
                ),
        
            
              ],
            ),
          ),
              ),
              Padding(
          padding: const EdgeInsets.fromLTRB(40, 105, 40, 0),
          child: Image.asset("assetss/SERPENTS!D.png",height: 41,width: 213,),
              )
              
              
              ],
              
              
              
              
              ),
              
              
              
              
              
          ),
        ),
      ),
    );
  }
}