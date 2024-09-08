// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordRecovery extends StatefulWidget {
  const PasswordRecovery({super.key});

  @override
  _pR createState() => _pR();
}

class _pR extends State<PasswordRecovery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Hello!",
          style: GoogleFonts.notoSans(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
