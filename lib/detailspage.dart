import 'package:flutter/material.dart';
import 'package:serphantsid/homepage.dart';

class detailspage extends StatelessWidget {
  String Habitat;
  String Idn;
  String Toxic;
  String secondimagepath;
  String name;
  String uname;
  String variens;

   detailspage({
    required this.Habitat,
        required this.Idn,
    required this.Toxic,
    required this.secondimagepath,
    required this.name,
    required this.uname,
    required this.variens,

    
    super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        
        child:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              width: double.infinity,
              height: 282,
              decoration: BoxDecoration(
                image: DecorationImage(image:NetworkImage(secondimagepath),fit: BoxFit.cover)
              ),
              child: IconButton(onPressed:() {
                Navigator.pop(context);
                
              }, icon: Icon(Icons.arrow_back,size: 30,color: Colors.white,),alignment: Alignment.topLeft,),
            ),
            Container(
              width: double.infinity,
              height: 57,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 42, 116, 44),

              ),
              child: Center(child: Text(name,style: TextStyle(fontSize: 32,fontFamily:"Poppins",color: Colors.white),)),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(18, 25, 18, 0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    blurRadius:1,
                  )],
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Scientific name"+ ":"+ uname,style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 30, 79, 31)),),
                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: Text("Toxicity" +":"+ Toxic,style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 30, 79, 31)),),
                      ),
                      Text("($variens)",style: TextStyle(fontSize: 16,color: const Color.fromARGB(255, 30, 79, 31)),),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 24, 5, 0),
                        child: Text("Habitat"+":"+Habitat,style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 30, 79, 31)),),
                      ),
                        Padding(
                        padding: const EdgeInsets.fromLTRB(0, 24, 5, 0),
                        child: Text("Identification Features"+":"+Idn,style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 30, 79, 31)),),
                      )

                
                    ],
                  ),
                ),
              ),
            )

          ],      



          )
        )
        
        
        
        ),

    );
  }
}