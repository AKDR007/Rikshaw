// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rikshaw/Authentication/Signup.dart';
import 'package:rikshaw/Authentication/PasswordRecov.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true; // To manage the password visibility

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText; // Toggle the visibility
    });
  }

  @override
  Widget build(BuildContext context) {
    // final TD = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Icon(
              //   Icons.electric_rickshaw,
              //   size: 50,
              // ),

              // Header Text
              Text('Welcome Back, Rider!',
                  style: GoogleFonts.notoSansMono(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),

              // const SizedBox(height: 10),

              const SizedBox(height: 40),

              // Username Field
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Mail/Mob',
                  // hintStyle: TextStyle(color: TD ? Colors.white : Colors.black),
                  hintStyle: const TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Password Field
              TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  hintStyle: const TextStyle(color: Colors.black),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                ),
              ),

              // Recovery Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PasswordRecovery()));
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Sign In Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Text('Start your Ride',
                        style: GoogleFonts.notoSansMono(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Register now
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Not a member? ",
                    style: const TextStyle(color: Colors.black54),
                    children: [
                      TextSpan(
                        text: 'Register now',
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Signup()));
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
