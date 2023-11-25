import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Saran extends StatelessWidget {
  const Saran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  'Saran dan Kesan',
                  style: GoogleFonts.montserrat(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          actions: [
            buildProfileAvatar('https://i.ibb.co/rp6BG70/ken.jpg'),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      "Saran",
                      style: GoogleFonts.montserrat(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                        "Menurut saya mata kuliah Pemrograman Berbasis Mobile sudah baik karena materinya sudah lengkap dan tugasnya sangat banyak ",
                        style: GoogleFonts.montserrat(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 40),
                    Text(
                      "Kesan",
                      style: GoogleFonts.montserrat(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                        "Mata kuliahnya menyenangkan karena tugasnya terlalu mantap pak",
                        style: GoogleFonts.montserrat(
                            fontSize: 15, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget buildProfileAvatar(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
        radius: 30, // Adjust the radius as needed
      ),
    );
  }
}
