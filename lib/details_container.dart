import 'package:flutter/material.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Container(
            width: 188,
            height: 178,
            decoration: BoxDecoration(
              image: DecorationImage(image:AssetImage("assetss/snakemain.png"),alignment: Alignment.bottomLeft)
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(11, 12, 4, 0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text("King Cobra",style: TextStyle(color: const Color.fromARGB(255, 22, 65, 24),fontSize: 18),),
                   Text("Ophiophagus hannah",style: TextStyle(color: const Color.fromARGB(255, 27, 70, 29),fontSize: 12,fontStyle: FontStyle.italic),),
          
                   Padding(
                     padding: const EdgeInsets.only(top: 10),
                     child: Text("Reptiles",style: TextStyle(color: const Color.fromARGB(255, 22, 65, 24),fontSize: 16,fontWeight: FontWeight.w500),),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(top: 10),
                     child: Text("10-12- feet",style: TextStyle(color: const Color.fromARGB(255, 22, 65, 24),fontSize: 16,fontWeight: FontWeight.w500),),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(top: 10),
                     child: Text("20 years",style: TextStyle(color: const Color.fromARGB(255, 22, 65, 24),fontSize: 16,fontWeight: FontWeight.w500),),
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




    );
  }
}