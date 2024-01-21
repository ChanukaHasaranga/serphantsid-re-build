import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:serphantsid/firebase_options.dart';
import 'package:serphantsid/loadingpage.dart';



void main() async{
WidgetsFlutterBinding.ensureInitialized();

await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
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