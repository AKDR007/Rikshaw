// import 'package:flutter/material.dart';
// import 'package:rikshaw/Activities/MapActivity.dart';

// class RideActivity extends StatefulWidget {
//   const RideActivity({super.key});
//   @override
//   _RideActivity createState() => _RideActivity();
// }

// class _RideActivity extends State<RideActivity> {
//   final TextEditingController _sourceLocation = TextEditingController();
//   final TextEditingController _destLocation = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _sourceLocation,
//               decoration: InputDecoration(
//                 labelText: "Source Loction",
//                 filled: true,
//                 fillColor: Colors.white,
//                 border:
//                     OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             TextField(
//               controller: _destLocation,
//               decoration: InputDecoration(
//                 labelText: "Destination Loction",
//                 filled: true,
//                 fillColor: Colors.white,
//                 border:
//                     OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const Mapactivity()));
//                 },
//                 child: const Text("Start Ride"))
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rikshaw/Activities/MapActivity.dart';

class RideActivity extends StatefulWidget {
  const RideActivity({super.key});
  @override
  _RideActivity createState() => _RideActivity();
}

class _RideActivity extends State<RideActivity> {
  final TextEditingController _sourceLocation = TextEditingController();
  final TextEditingController _destLocation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300, // Adjust the width as needed
              child: TextField(
                controller: _sourceLocation,
                decoration: InputDecoration(
                  labelText: "Source Location",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300, // Adjust the width as needed
              child: TextField(
                controller: _destLocation,
                decoration: InputDecoration(
                  labelText: "Destination Location",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Mapactivity(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[200],
                  foregroundColor: Colors.white),
              child: Text(
                "Start Ride",
                style: GoogleFonts.notoSansMono(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
