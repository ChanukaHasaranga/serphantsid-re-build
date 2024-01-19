import 'package:flutter/material.dart';
import 'package:serphantsid/spashscreen.dart/spashscreen1.dart';
import 'package:serphantsid/spashscreen.dart/splashscreen2.dart';
import 'package:serphantsid/spashscreen.dart/splashscreen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboardscree extends StatefulWidget {
  const onboardscree({super.key});

  @override
  State<onboardscree> createState() => _onboardscreeState();
}

class _onboardscreeState extends State<onboardscree> {
PageController _controller=PageController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Stack(
children:[
       PageView(
        controller: _controller,
      children: [
      
        splashscreen1(controller: _controller,),
        splashscreen2(controller: _controller),
        splashscreen3(controller: _controller)
      ],
      
      
        ),
        Container(
          alignment: Alignment(0, 0.9),
          
          child: SmoothPageIndicator(controller: _controller, count: 3))

]
      )
      
      
      
      );






  }
}