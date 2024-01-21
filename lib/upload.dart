import 'package:flutter/material.dart';

class upload extends StatefulWidget {
  const upload({super.key});

  @override
  State<upload> createState() => _uploadState();
}

class _uploadState extends State<upload> {
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
}