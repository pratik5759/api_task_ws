import 'package:flutter/material.dart';
import 'package:ws_api_task/api/views/home.dart';
import 'package:ws_api_task/api/views/splash_screnn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Food App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        textTheme: TextTheme(
          //bodyText1: TextStyle(color: Colors.red),
            bodyText2: TextStyle(color: Colors.white)
        ),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogoUi(),
    );
  }
}*/

