// import 'package:bubunmobile/screens/test.dart';
import 'package:flutter/material.dart';
import 'package:tradaru_test/ui/Home.dart';
import 'package:tradaru_test/ui/splash.dart';
//import 'forgotpassword.dart';

void main() => runApp(TradaruTes());

class TradaruTes extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bubun Mobile Application',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          //textTheme: GoogleFonts.montserratTextTheme(),
        ),
        home: Splash(),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => Home(),
          //'/historycoupon': (BuildContext context) => HistoryCoupon(),
        });
  }


}
