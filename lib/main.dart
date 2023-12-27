import 'package:flutter/material.dart';
import 'package:serphantsid/loadingpage.dart';

void main(){

runApp( const Myapp());

}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        title:"SerphantID",
        home:loadingpage()
    );
  }
}