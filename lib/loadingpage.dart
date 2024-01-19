import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:serphantsid/onboardscreen.dart';
import 'package:serphantsid/spashscreen.dart/spashscreen1.dart';

class loadingpage extends StatefulWidget {
  const loadingpage({super.key});

  @override
  State<loadingpage> createState() => _loadingpageState();
}

class _loadingpageState extends State<loadingpage> {

double percent = 0.0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (percent < 1.0) {
          percent += 0.2;
        } else {
          timer.cancel();
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return onboardscree();
          }));
        }
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
             child: Column(
              
                children: [

                Center(child: Padding(
                  padding: EdgeInsets.only(top: 326),
                  child: Image(image:AssetImage("assetss/logo.png"),width: 192,height: 192,),
                )
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 168,horizontal: 40),
                  child: LinearPercentIndicator(
                   animation: true,
                   animationDuration:0,
                   percent:percent,
                   lineHeight: 29,
                   width: 309,
                   progressColor: const Color.fromARGB(255, 14, 95, 17),
                   barRadius: Radius.circular(15.5),
                  
                
                
                  ),
                )
               
             ],

            



             ),











          ),





    );
  }
}