import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rikshaw/TypeFaceSystem.dart';
import 'package:rikshaw/Login.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const SplashScreen(), // Start with the SplashScreen
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // Navigate to the Login page after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const Fs(),
      ));
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your splash screen logo or image here
            Image.asset(
              'assets/Icons/Loading_Screen.webp', // Replace with your logo
            ),

            // You can also add a loading indicator or text
            const CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class Fs extends StatelessWidget {
  const Fs({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image/Illustration
              Container(
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    'assets/Icons/Loading_Screen.webp', // Replace with your local image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // Title
              Text(
                'Discover your Dream job Here',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSansMono(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              // Subtitle
              Text(
                'Explore all the most exiting job roles based on your interest And study major',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSansMono(
                    color: Colors.grey[600],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 60),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Register Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      side: BorderSide(color: Colors.grey[300]!),
                    ),
                    onPressed: () {
                      // Handle Register action
                    },
                    child: Text(
                      'Register',
                      style: TextStyles.notoSansMono,
                    ),
                  ),
                  const SizedBox(width: 16),

                  // Sign In Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () {
                      // Handle Sign In action
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: Text('Sign In', style: TextStyles.notoSansMono),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
