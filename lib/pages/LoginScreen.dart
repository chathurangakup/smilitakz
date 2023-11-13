import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../utils/ColorsInfo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class _LoginScreenState extends State<LoginScreen> {

  Color color1 = HexColor("#40C49E");
  Color btncolor1 = HexColor("#FF948B");
  Color btncolor2 = HexColor("#D87870");
  Color bordercolor = HexColor("#DE8179");
  Color textColor = HexColor("#FAF8EB");
  Color textColor2 = HexColor("#08293B");



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Top Section - Top Left
          Positioned(
            top: 60,
            left: 0,
            child: Image.asset(
              'assests/images/elephant_img.png',
              width: 200, // Adjust the width as needed
              height: 250, // Adjust the height as needed
              fit: BoxFit.cover,
            ),
          ),

          // Middle Section - Centered
          Column(
            children: [
              SizedBox(height: 290,),
              Center(
                child: Image.asset(
                  'assests/images/logo.png',
                  width: 150, // Adjust the width as needed
                  height: 30, // Adjust the height as needed
                  fit: BoxFit.cover,
                ),
              ),


              Padding(
                padding: EdgeInsets.only(top: 50, bottom: 5, left: 20, right: 20),
                child:  Center(
                    child:SizedBox(
                      width: 300.0,
                      height: 40.0,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              color: CommonColors.dusk,
                              fontSize: 15,

                            ),
                            prefixIcon: Icon(Iconsax.user, color: Colors.black,size:18),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: color1, width: 1),
                                borderRadius: BorderRadius.circular(30)
                            ),
                            floatingLabelStyle: TextStyle(
                                color: CommonColors.dusk,
                                fontSize: 18
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: color1, width: 1),
                                borderRadius: BorderRadius.circular(30)
                            )
                        ),
                      ),
                    )
                ),
              ),

           Padding(
             padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
                child:  Center(
                    child:SizedBox(
                  width: 300.0,
                  height: 40.0,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          color: CommonColors.dusk,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIcon: Icon(Iconsax.lock, color: Colors.black,size:18),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:  color1, width: 1),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        floatingLabelStyle: TextStyle(
                          color: CommonColors.dusk,
                            fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:color1, width: 1),
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                ),
              ),

            ],
          ),

          SizedBox(height: 70,),



          Padding( padding: EdgeInsets.only(top: 200, bottom: 5, left: 20, right: 20),
            child:  Center(
              child:SizedBox(
                width: 130.0,
                height: 40.0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      gradient: LinearGradient(colors: [bordercolor, bordercolor])),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: btncolor1, shadowColor: btncolor2,shape: StadiumBorder()),
                    child: Text('Login',
                      style: new TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20.0,
                      color: Colors.white,

                    ),),
                  ),
                )
              ),
            ),
          ),
          SizedBox(height: 100,),
    Padding( padding: EdgeInsets.only(top: 300, bottom: 5, left: 20, right: 20),
    child:
          Center(
              child:SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?', style: TextStyle( color: CommonColors.dusk,fontSize: 15,  fontFamily: 'Montserrat',)),
                      TextButton(onPressed: (){}, child:  Text('Sign in', style: TextStyle(color: btncolor1, fontSize: 15, fontWeight: FontWeight.w700,fontFamily: 'Montserrat')),),
                      Image.asset(
                        'assests/images/vector.png',
                        width: 10, // Adjust the width as needed
                        height: 10, // Adjust the height as needed
                        fit: BoxFit.cover,
                      ),
                    ],
                  )
              ),
            ),
    ),


          // Bottom Section - Bottom Right
          Positioned(
            bottom: 20,
            right: 0,
            child: Image.asset(
              'assests/images/dino_img.png',
              width: 200, // Adjust the width as needed
              height: 200, // Adjust the height as needed
              fit: BoxFit.cover,
            ),
          ),

          // Row of 3 Images at the Bottom
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(

            ),
          ),
          Container(

            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex:2,
                  child: Container(
                    color: CommonColors.salman, // Set the background color
                    width: 250,
                    height: 20,
                  ),
                ),
                Expanded(
                  flex:3,
                  child: Container(
                    color:CommonColors.mint, // Set the background color
                    width: 250,
                    height: 20,
                  ),
                ),
                Expanded(
                  flex:5,
                  child: Container(
                    color: CommonColors.dusk, // Set the background color
                    width: 250,
                    height: 20,
                  ),
                ),
              ],
            ),
          )
          ]
      )



        ],
      ),
    );
  }
}
