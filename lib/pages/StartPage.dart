import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_proj/pages/LoginScreen.dart';

import '../utils/ColorsInfo.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      // Navigate to another screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Centered Image at the Top

          Expanded(
            child: Center(
              child: Image.asset(
                'assests/images/logo.png',
                width: 200, // adjust the width as needed
                height: 40, // adjust the height as needed
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Spacer to create space between the centered image and the row of images


          // Row of 3 Images at the Bottom
          Row(
            children: [
              Expanded(
                flex:5,
                child: Container(
                 color: CommonColors.salman, // Set the background color
                  width: 250,
                  height: 20,
                  ),
              ),
              Expanded(
                flex:3,
                child: Container(
                  color: CommonColors.mint, // Set the background color
                  width: 250,
                  height: 20,
                ),
              ),
              Expanded(
                flex:2,
                child: Container(
                  color: CommonColors.dusk, // Set the background color
                  width: 250,
                  height: 20,
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
