// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:rikshaw/Activities/MapActivity.dart';
import 'package:rikshaw/Activities/RideAcitivity.dart';
import 'package:rikshaw/TypeFaceSystem.dart';

const double BSX = 10;

class Signup extends StatelessWidget {
  const Signup({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignupPage(),
    );
  }
}

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  bool _obscureText = true; // To manage the password visibility

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText; // Toggle the visibility
    });
  }

  final TextEditingController _name = TextEditingController();
  final TextEditingController _mail = TextEditingController();
  final TextEditingController _pwd = TextEditingController();
  final TextEditingController _cpwd = TextEditingController();
  final TextEditingController _mobCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Customer'),
            Tab(text: 'Partner'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Signup Tab Customer
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Header Text
                  const Icon(
                    Icons.supervised_user_circle_outlined,
                    size: 100,
                  ),

                  const SizedBox(height: 40),
                  Column(
                    children: [
                      // Username Field
                      TextField(
                        controller: _name,
                        decoration: InputDecoration(
                          labelText: 'Name',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(BSX),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: _mobCont,
                        decoration: InputDecoration(
                            labelText: "Mobile",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(BSX))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      // Email Field
                      TextField(
                        controller: _mail,
                        decoration: InputDecoration(
                          labelText: "Mail ID",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(BSX)),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Password Field
                      TextField(
                        controller: _pwd,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(BSX),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: _togglePasswordVisibility,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Confirm Password Field
                      TextField(
                        controller: _cpwd,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(BSX),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: _togglePasswordVisibility,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  const SizedBox(height: 30),

                  // Signup Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RideActivity()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(BSX),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          'Sign up',
                          style: TextStyles.notoSansMono,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                      "Password Requirements: \n1.Should Contain a Captial, Small Alphabets Symbol and a Number\n2.Password Character Length should be 8 - 16 Characters")
                ],
              ),
            ),
          ),

          // Signup Tab Partner

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Header Text
                  const Icon(
                    Icons.supervised_user_circle_outlined,
                    size: 100,
                  ),

                  const SizedBox(height: 40),
                  Column(
                    children: [
                      // Username Field
                      TextField(
                        controller: _name,
                        decoration: InputDecoration(
                          labelText: 'Name',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(BSX),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: _mobCont,
                        decoration: InputDecoration(
                            labelText: "Mobile",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(BSX))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      // Email Field
                      TextField(
                        controller: _mail,
                        decoration: InputDecoration(
                          labelText: "Mail ID ( Optional )",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(BSX)),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Password Field
                      TextField(
                        controller: _pwd,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(BSX),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: _togglePasswordVisibility,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Confirm Password Field
                      TextField(
                        controller: _cpwd,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(BSX),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: _togglePasswordVisibility,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  const SizedBox(height: 30),

                  // Signup Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Mapactivity()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(BSX),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          'Sign up',
                          style: TextStyles.notoSansMono,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                      "Password Requirements: \n1.Should Contain a Captial, Small Alphabets Symbol and a Number\n2.Password Character Length should be 8 - 16 Characters")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
