import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rikshaw/Authentication/Login.dart';
// import 'package:clock/clock.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

// bool isNightTime() {
//   final hour = clock.now().hour;
//   return hour < 6 || hour > 18;
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Store the theme to avoid repeated calculations
    // final theme = isNightTime() ? ThemeData.dark() : ThemeData.light();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: theme,
      home: SplashScreen(), // Start with the SplashScreen
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Preload the image to ensure smooth loading
    // precacheImage(
    //     const AssetImage('assets/Icons/Loading_Screen.webp'), context);

    // Navigate to the Login page after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your splash screen logo or image here
            // Image.asset(
            //   'assets/Icons/Loading_Screen.webp', // Replace with your logo
            //   fit: BoxFit.contain, // Ensure the image fits properly
            // ),
            const SizedBox(height: 40),
            Text(
              "வணக்கம் வேலூர்",
              style: GoogleFonts.notoSansMono(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            const CircularProgressIndicator(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
