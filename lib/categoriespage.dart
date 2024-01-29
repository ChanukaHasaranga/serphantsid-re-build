import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:serphantsid/details_container.dart';
import 'package:serphantsid/mytab.dart';

class categories extends StatelessWidget {
   categories({super.key});

List <Widget> mytab=[

  MyTab(txt: "Deadly Venomous"),
  MyTab(txt: "Mildly Venomous")



];

final deadlyvenoms=FirebaseFirestore.instance.collection("Deadly venomous").snapshots();
final midlyvenom=FirebaseFirestore.instance.collection("Middly venomes").snapshots();



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mytab.length,
      child: Scaffold(
    
     backgroundColor: Colors.white,
       appBar: AppBar(
        title: Center(child:Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assetss/SERPENTS!D.png"),fit: BoxFit.contain),),height: 38,width: 195,),),
    backgroundColor: Color.fromARGB(255, 56, 124, 7),
    
       ),
       body: SafeArea(
        
        
        child: SingleChildScrollView(
    
    child: Column(
mainAxisAlignment: MainAxisAlignment.start,

      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text("Categories",style: TextStyle(color: const Color.fromARGB(255, 23, 74, 25),fontFamily: "Poppins",fontSize: 23),),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
          child: Container(
            
            child: TabBar(
              indicatorWeight:2,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
              indicator:BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color.fromARGB(107, 24, 100, 3)
                
              ),
              
              tabs:mytab),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: SizedBox(
               height:550,          
            child: TabBarView(
              children: [
                StreamBuilder(
                  stream: deadlyvenoms, 
                  builder:(context, snapshot) {
                    if (snapshot.hasError) {
        
                      return Text("Connection Error");
        
        
        
                      
                    }
        
        if (snapshot.connectionState==ConnectionState.waiting) {
          return Text("Loading...");
          
        }
        
        var deadlyvenomdoc=snapshot.data!.docs;
        
        return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: deadlyvenomdoc.length,
          itemBuilder:(context, index) {
            
        return details(
          name: deadlyvenomdoc[index]['Firstname'],
                   uname: deadlyvenomdoc[index]['Sname'],
                    variens: deadlyvenomdoc[index]['Uname'], 
                    feet: deadlyvenomdoc[index]['Lenth'], 
                    years: deadlyvenomdoc[index]['Born'], 
                    imagepath:deadlyvenomdoc[index]['Mimage'], 
                    Habitat:deadlyvenomdoc[index]['Habitat'],
                     Idn:deadlyvenomdoc[index]["Idn"], 
                     Toxic:deadlyvenomdoc[index]['Toxic'], 
                     secondimagepath:deadlyvenomdoc[index]['Profilepic'],
          
          
          );
          },
          
          
          );
        
        
        
                  },),
        
                  StreamBuilder(
                    
                    stream: midlyvenom,
                     builder:(context, snapshot) {
                       if (snapshot.hasError) {
                        return Text("Connection Error");
                         
                       }
                       if (snapshot.connectionState==ConnectionState.waiting) {
        
                        return Text("Loading...");
                         
                       }
        
                        var midlyvenomdoc=snapshot.data!.docs;
        
                        return ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: midlyvenomdoc.length,
                          itemBuilder:(context, index) {
                            return details(
          name: midlyvenomdoc[index]['Firstname'],
                   uname: midlyvenomdoc[index]['Sname'],
                    variens: midlyvenomdoc[index]['Uname'], 
                    feet: midlyvenomdoc[index]['Lenth'], 
                    years: midlyvenomdoc[index]['Born'], 
                    imagepath:midlyvenomdoc[index]['Mimage'], 
                    Habitat:midlyvenomdoc[index]['Habitat'],
                     Idn:midlyvenomdoc[index]["Idn"], 
                     Toxic:midlyvenomdoc[index]['Toxic'], 
                     secondimagepath:midlyvenomdoc[index]['Profilepic'],
          
          
          );
                            
        
                          },
                          
                          
                          );
                     },)
        
        
        
        
              ],
            ),
          ),
        )

      ],
    
    
    
      
    ),
    
    
        )
       
       
       
       
       )
    
      ),
    );
  }
}