import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home.page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();

}

class InitState extends State<SplashScreen> with TickerProviderStateMixin {
  @override

  void initState(){
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, homeRoute);
  }

  homeRoute(){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => HomePage()
    ));
  }

  @override
  Widget build(BuildContext context){
    return initWidget();
  }

  Widget initWidget(){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              gradient: LinearGradient(
                colors: [(Theme.of(context).primaryColor), (Colors.deepPurpleAccent)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 300,
              child: Lottie.asset(
                  "assets/lottie/gas-station.json"
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 250),
              padding: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.bottomCenter,
              height: 30,
              child: Text(
                "Alcóol ou Gasolina?",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white70,
                  letterSpacing: 2,
                  fontFamily: "Big Shoulders Display",
                ),
              ),
            ),
          ),

          Center(
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 600),
              padding: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.bottomCenter,
              height: 30,
              child: Text(
                "© Desenvolvido por Vinícius Blanco",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                  letterSpacing: 0,
                  fontFamily: "Big Shoulders Display",
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}