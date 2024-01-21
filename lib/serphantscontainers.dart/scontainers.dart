import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:serphantsid/detailspage.dart';

class scontainers extends StatelessWidget {
String imagepath;
String txt;

   scontainers({
    required this.imagepath,
    required this.txt,
    
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Padding(
       padding: const EdgeInsets.only(top: 7),
      child: GestureDetector(
        onTap: () {
          if (txt=='King Cobra') {
            Navigator.of(context).push(MaterialPageRoute(builder:(context) {
              return detailspage(
                Habitat: "Found in dense or open forests, plains, agricultural lands (rice paddy fields, wheat crops), rocky terrain, wetlands, and it can even be found in heavily populated urban areas, such as villages and city outskirts, ranging from sea level to 2,000 meters (6,600 ft) in altitude.", 
                Idn: "Can easily     be identified by its relatively large     and quite impressive hood,     which it expands when threatened.     The Indian cobra varies     tremendously in colour and pattern     throughout its range. The ventral     scales or the underside colouration     of this species can be grey,     yellow, tan, brown, reddish or black.     Dorsal scales of the Indian cobra     may have a hood mark or     colour patterns. The most common     visible pattern is a posteriorly     convex light band at the level of     the 20th to 25th ventral. Salt-and-     pepper speckles, especially in adult     specimens, are seen on the     dorsal scales.", 
                Toxic:"Deadly venomous", 
                secondimagepath: "https://firebasestorage.googleapis.com/v0/b/serphanid.appspot.com/o/unsplash_F27znIDT1l0%20(2).png?alt=media&token=668afca3-f1a2-42e3-8754-1aa3ca59e6a4", 
                name: txt, 
                uname: "Naja Naja", 
                variens: "Reptiles"
                );
            },));
            
          }
        },
        child: Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image:AssetImage(imagepath),fit: BoxFit.cover)
          ),
        ),
      ),
    ),
    Text(txt,style: TextStyle(fontSize: 12,color: const Color.fromARGB(255, 6, 45, 7),fontFamily: "Poppins"),),
     Padding(
       padding: const EdgeInsets.only(top: 7),
       child: Container(
        height: 19,
        width: 57,
        decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage("assetss/Group.png"),fit: BoxFit.cover)
        ),
         ),
     ),
  ],
),

    );
  }
}