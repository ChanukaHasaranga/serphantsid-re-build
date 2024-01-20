import 'package:flutter/material.dart';

class scontainers extends StatelessWidget {
  const scontainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Container(
      height: 66,
      width: 66,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image:AssetImage("assetss/snake.png"),fit: BoxFit.cover)
      ),
    ),
    Text("King Cobra",style: TextStyle(fontSize: 12,color: const Color.fromARGB(255, 6, 45, 7),fontFamily: "Poppins"),)
  ],
),

    );
  }
}