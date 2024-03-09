import 'package:exam/design1/design1.dart';
import 'package:exam/design3/design3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'design2/design2.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exam",
      routes: {
        Design1.routeName : (_) => Design1(),
        Design2.routeName : (_) => Design2(),
        Design3.routeName : (_) => Design3(),
      },
      initialRoute: Design3.routeName,

    );
  }


}