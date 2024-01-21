import 'package:flutter/material.dart';

class details extends StatelessWidget {
  String name;
  String uname;
  String variens;
  String feet;
  String years;
  String imagepath;

   details({
    
    required this.name,
        required this.uname,
    required this.variens,

        required this.feet,
    required this.years,
    required this.imagepath,

    
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 352,
        height: 178,
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color.fromARGB(255, 26, 68, 27))
    
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 188,
                height: 178,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(13),bottomLeft: Radius.circular(13)),
                  image: DecorationImage(image:NetworkImage(imagepath),alignment: Alignment.bottomLeft,fit: BoxFit.cover)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(11, 12, 4, 0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(name,style: TextStyle(color: const Color.fromARGB(255, 22, 65, 24),fontSize: 18),),
                     Text(uname,style: TextStyle(color: const Color.fromARGB(255, 27, 70, 29),fontSize: 12,fontStyle: FontStyle.italic),),
            
                     Padding(
                       padding: const EdgeInsets.only(top: 10),
                       child: Text(variens,style: TextStyle(color: const Color.fromARGB(255, 22, 65, 24),fontSize: 16,fontWeight: FontWeight.w500),),
                     ),
                      Padding(
                       padding: const EdgeInsets.only(top: 10),
                       child: Text(feet,style: TextStyle(color: const Color.fromARGB(255, 22, 65, 24),fontSize: 16,fontWeight: FontWeight.w500),),
                     ),
                      Padding(
                       padding: const EdgeInsets.only(top: 10),
                       child: Text(years,style: TextStyle(color: const Color.fromARGB(255, 22, 65, 24),fontSize: 16,fontWeight: FontWeight.w500),),
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 19),
                       child: Container(
                        width: 102,
                        height: 27,
                        decoration: BoxDecoration(
                          image: DecorationImage(image:AssetImage("assetss/Group.png"),alignment: Alignment.bottomRight)
                        ),
                       ),
                     )
    
    
            
                  ],
                ),
              ),
            )
    
          ],
        ),
    
    
    
    
      ),
    );
  }
}