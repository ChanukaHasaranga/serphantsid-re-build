import 'package:flutter/material.dart';
import 'package:serphantsid/camerapage.dart';
import 'package:serphantsid/conbination.dart';
import 'package:serphantsid/homepage.dart';
import 'package:serphantsid/searchpage.dart';

class bottomnavigator extends StatelessWidget {




   bottomnavigator({
 

    
    
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 40),
    child: Align(
      alignment: Alignment(0.0,1.0),
      child:ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(

          selectedItemColor: Color.fromARGB(255, 0, 0, 0),
          unselectedItemColor: Colors.black,
          
          
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              items: [
                BottomNavigationBarItem(
                  icon: IconButton(icon: const Icon(Icons.home,size: 25,), onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                      return homepage();
                    },));
                     

                  }),
                  label:"",
                ),
               
                BottomNavigationBarItem(
                  icon: IconButton(icon: const Icon(Icons.search,size: 25,), onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                      return searchpage();
                    },));
                  }),
                  label:"",
                ),
                 BottomNavigationBarItem(
                  icon: IconButton(icon: const Icon(Icons.camera,size: 25,), onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                      return camerapage();
                    },));

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
  );
  }
}