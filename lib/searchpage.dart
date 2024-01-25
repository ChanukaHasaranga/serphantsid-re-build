import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:serphantsid/details_container.dart';
import 'package:serphantsid/detailspage.dart';

class searchpage extends StatefulWidget {
  const searchpage({super.key});

  @override
  State<searchpage> createState() => _searchpageState();
}

class _searchpageState extends State<searchpage> {
var searchtext='';
  final _searchtext=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
   title: Center(child:Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assetss/SERPENTS!D.png"),fit: BoxFit.contain),),height: 38,width: 195,),),
backgroundColor: Color.fromARGB(255, 56, 124, 7),
),
body: SafeArea(
  child: SingleChildScrollView(
    child:Column(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 30, 25, 30),
          child: Container(
            height: 46,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              boxShadow: [BoxShadow(
             color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
          blurRadius: 8,
          offset: Offset(0, 3),
              )]
            ),
            child: TextField(
              
              style: TextStyle(color: const Color.fromARGB(255, 21, 69, 23)),
              onChanged: (value) {
                setState(() {
                  searchtext=value;
                });
              },
              
              controller: _searchtext,
              keyboardType: TextInputType.name,
              cursorColor: Colors.green,
              
              decoration: InputDecoration(
                
                suffixIcon: Icon(Icons.search),
                suffixStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: Color.fromARGB(146, 0, 0, 0))
                 ),
                 enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: Color.fromARGB(159, 21, 108, 14))
                  
          
                 ),
                 
          
                        ),
            ),
          ),
        ),
        Container(

          height: 800,
          
          child:StreamBuilder<QuerySnapshot>(

            
            stream: FirebaseFirestore.instance.collection("SerphantID").orderBy('Firstname').where('Firstname',isGreaterThanOrEqualTo:searchtext).where('Firstname',isLessThan: '${searchtext}z' ).snapshots(),
            builder: (context, snapshot) {

              
                   if (snapshot.hasError) {
                    return Text("Connection error");
                     
                   }
                   if (snapshot.connectionState==ConnectionState.waiting) {
                    return Text("Loading....");
                     
                   }
                
                var searchbuilder=snapshot.data!.docs;

                return ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: searchbuilder.length,
                  itemBuilder:(context, index) {
             
               return details(
                name: searchbuilder[index]['Firstname'],
                 uname: searchbuilder[index]['Sname'],
                  variens: searchbuilder[index]['Uname'], 
                  feet: searchbuilder[index]['Lenth'], 
                  years: searchbuilder[index]['Born'], 
                  imagepath:searchbuilder[index]['Mimage'], 
                  Habitat:searchbuilder[index]['Habitat'],
                   Idn:searchbuilder[index]["Idn"], 
                   Toxic:searchbuilder[index]['Toxic'], 
                   secondimagepath:searchbuilder[index]['Profilepic'],
                  
                  );
              
             
             

                    


                    
                  },);

            },
          
          
          
          
           )
        )

      ],

    )
  ),
),




    );
  }
}