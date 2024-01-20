import 'package:flutter/material.dart';
import 'package:serphantsid/homepage.dart';

class splashscreen3 extends StatelessWidget {
  PageController controller=PageController();
   splashscreen3({
    
    required this.controller,

    super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
            
            image:DecorationImage(image:AssetImage("assetss/3page.png"),fit:BoxFit.cover)
            
            
            
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
                padding: const EdgeInsets.fromLTRB(34, 33, 54, 0),
                child: Text("Increase awareness in our society about snakes.",style: TextStyle(fontSize: 32,fontWeight: FontWeight.normal,color: Colors.white,height:1.2,fontFamily: "Poppins"),textAlign: TextAlign.left,),
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 6, 23, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed:() {
            
                    controller.previousPage(duration:Duration(microseconds: 500), curve: Curves.easeIn);
                    
                  }, icon: Icon(Icons.arrow_back_ios_rounded,size: 38,color: Colors.white,)),
            IconButton(onPressed:() {
            
Navigator.of(context).push(MaterialPageRoute(builder:(context) {
  return homepage();
},));                    
                  }, icon: Icon(Icons.arrow_forward_ios_rounded,size: 38,color: Colors.white,)),
            
            
                ],
            
              ),
            )
        
        
          
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
    );
  }
}