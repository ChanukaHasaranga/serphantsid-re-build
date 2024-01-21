import 'package:flutter/material.dart';
import 'package:serphantsid/details_container.dart';
import 'package:serphantsid/homepagecontainers/hcontainers.dart';
import 'package:serphantsid/serphantscontainers.dart/scontainers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';



class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
  

}

class _homepageState extends State<homepage> {

final serphantsid=FirebaseFirestore.instance.collection("SerphantID").snapshots();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
     appBar: AppBar(
      title: Center(child:Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assetss/SERPENTS!D.png"),fit: BoxFit.contain),),height: 38,width: 195,),),
backgroundColor: Color.fromARGB(255, 56, 124, 7),

     ),

body: SafeArea(

child: Stack(
  children:[ 
    SingleChildScrollView(
  
  
  
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
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.fromLTRB(23, 0, 23, 0),
  
    child:   Row(
  
    
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    
  
      children: [
  
        scontainers(imagepath: 'assetss/snake.png', txt: 'King Cobra',),
  
        scontainers(imagepath: 'assetss/slkarait.png', txt: 'SL Krait',),
  
        scontainers(imagepath: 'assetss/russellviperpng.png', txt: 'Russell’s viper',),
  
        scontainers(imagepath: 'assetss/indian.png', txt: 'Indian krait',),
  
  
  
  
  
    
  
    
  
      ],
  
    
  
    ),
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 11),
  
    child:   Text("Common Serpent IDS",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,fontFamily: "Poppins",color: const Color.fromARGB(255, 19, 86, 21)),),
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.fromLTRB(11, 22, 11, 20),
  
    child: Container(
      height: 400,
      width: 700,
      child: StreamBuilder(
        stream:serphantsid, 
        builder:(context, snapshot) {
          if (snapshot.hasError) {
    
            return const Text("Connection Error");
            
          }
          if (snapshot.connectionState==ConnectionState.waiting) {
            
            return const Text("Loading.....");
          }
           var serphentsiddoc=snapshot.data!.docs;
    
           return ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: serphentsiddoc.length,
            itemBuilder:(context, index) {
             
              return details(
                name: serphentsiddoc[index]['Firstname'],
                 uname: serphentsiddoc[index]['Sname'],
                  variens: serphentsiddoc[index]['Uname'], 
                  feet: serphentsiddoc[index]['Lenth'], 
                  years: serphentsiddoc[index]['Born'], 
                  imagepath:serphentsiddoc[index]['Mimage'], 
                  Habitat:serphentsiddoc[index]['Habitat'],
                   Idn:serphentsiddoc[index]["Idn"], 
                   Toxic:serphentsiddoc[index]['Toxic'], 
                   secondimagepath:serphentsiddoc[index]['Profilepic'],
                  
                  );
              
             
             
            },
            
            
            
            );
    
        },
        
        ),
    )
  
  ),
    
  
  

  
  
  
      ],
  
  
  
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
        
                     
        
                  }),
                  label:"",
                  )
              ],
            ),
      ),
    ),
  ),

  ]
),



),


    );
  }
}