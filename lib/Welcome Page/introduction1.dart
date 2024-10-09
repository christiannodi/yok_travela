import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Introduction1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  // ID Circle on the top-right
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        'ID',
                        style: GoogleFonts.ubuntu(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 280),
                  // Main Title Text
                  Text(
                    'Cari tempat liburan\nmu disini.',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.tiltWarp(
                      fontWeight: FontWeight.normal,
                      fontSize: 32,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 200),
                  Text(
                    'No Wacana Wacana!',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 0),
                  Text(
                    'Ga usah fafifu buat cari destinasi tempat mainmu',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            // Positioned Image (First Image)
            Positioned(
              top: 120,
              left: -80, // Can adjust to control the horizontal position
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('assets/camping1.png'), // First image
              ),
            ),
            // Positioned Image (Second Image)
            Positioned(
              bottom: 230,
              right: -40, // Can adjust to control the horizontal position
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('assets/camping2.png'), // Second image
              ),
            ),
            // Button at the bottom center
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50.0, right: 30.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/introduction2');// Add your button functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 36, vertical: 16),
                    backgroundColor: Colors.black,
                  ),
                  child: Text(
                    'Lanjut',
                    style: GoogleFonts.ubuntu(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}