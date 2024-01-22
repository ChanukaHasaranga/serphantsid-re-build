import 'package:flutter/material.dart';

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
    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 40),
    child: Align(
      alignment: Alignment(0.0,1.0),
      child:ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(

          selectedItemColor: Color.fromARGB(255, 57, 121, 59),
          unselectedItemColor: Colors.black,
          
          
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              items: [
                BottomNavigationBarItem(
                  icon: IconButton(icon: const Icon(Icons.home,size: 25,), onPressed: () {}),
                  label:"",
                ),
               
                BottomNavigationBarItem(
                  icon: IconButton(icon: const Icon(Icons.search,size: 25,), onPressed: () {
                  }),
                  label:"",
                ),
                 BottomNavigationBarItem(
                  icon: IconButton(icon: const Icon(Icons.camera,size: 25,), onPressed: () {

                  }),
                  label:"",
                 ),
                  BottomNavigationBarItem(
                  icon: IconButton(icon: const Icon(Icons.interests_outlined,size: 25,), onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                      return conbination();

                    },));
                     
        
                  }),
                  label:"",
                  )
              ],
            ),
      ),
    ),
  ),

    ],




)),




    );
  }
}