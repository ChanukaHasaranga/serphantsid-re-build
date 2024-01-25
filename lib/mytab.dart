import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {

String txt;

   MyTab({
    
    required this.txt,
    
    
    super.key});

  @override
  Widget build(BuildContext context) {
    return Tab(
      
    child: Container(
      margin: EdgeInsets.all(1),
      height: 200,
      
      width: 164,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 13, 46, 14)
      ),
      child: Center(child: Text(txt,style: TextStyle(color: Colors.white,fontSize: 16),textAlign: TextAlign.center,)),
    ),


    );
  }
}