import 'package:flutter/material.dart';
import 'package:hotel_app_ui/screens/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double contentHeight = screenHeight * 0.2;
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/welcomescreen2.jpg'), // Image file path
          fit: BoxFit.cover, // How the image should be fitted within the box
        )),
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.7,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Are you Ready?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    )),
                SizedBox(height: screenHeight * 0.01),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Find your hotel easily and travel \nanywhere you want with us.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    )),
                SizedBox(height: screenHeight * 0.02),
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          Size(MediaQuery.of(context).size.width,
                              screenHeight * 0.05),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF5845fc)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Text("Let's Go", style: TextStyle(fontSize: 17)),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
