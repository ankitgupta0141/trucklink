import 'package:flutter/material.dart';
import 'splash_screen.dart';  // Import the splash screen file

void main() {
  runApp(TruckLinkApp());
}

class TruckLinkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TruckLink',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),  // SplashScreen is the first screen
    );
  }
}
