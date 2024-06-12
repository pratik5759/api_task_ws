import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ws_api_task/api/views/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FoodHome(),)); });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/gif/recipe_splash_2.gif",width: double.infinity,),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text("Yummly",style: TextStyle(fontFamily: "heyam",color: Colors.blue,fontSize: 80),),
            ),

          ],
        ),
      ),
    );
  }
}
