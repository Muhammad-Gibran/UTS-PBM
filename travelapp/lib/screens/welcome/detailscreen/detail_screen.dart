import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/utilities/colors.dart';
import 'package:travelapp/model/place_model.dart';

class TravelingDetail extends StatelessWidget {
  final PlaceInfo TravelingModel;
  TravelingDetail({super.key, required this.TravelingModel});

  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 239, 130, 57),
        automaticallyImplyLeading: true,
        title: Text(
          TravelingModel.name,
          style: GoogleFonts.getFont(
            'Poppins',
            color: Color(0xFFFAFDFF),
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(TravelingModel.image),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: kPrimaryClr,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      TravelingModel.location,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Text(
                      "Trip details",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  TravelingModel.desc,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Divider(
                  height: 5,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Text(
                      "Waktu perjalanan",
                      style: GoogleFonts.getFont(
                        'Poppins',
                        color: Color.fromARGB(255, 239, 130, 57),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Text(
                        "${TravelingModel.days} hari",
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Jarak Perjalanan",
                      style: GoogleFonts.getFont(
                        'Poppins',
                        color: Color.fromARGB(255, 239, 130, 57),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Text(
                        "${TravelingModel.distance} kilometers",
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                MaterialButton(
                  color: kPrimaryClr,
                  minWidth: double.infinity,
                  height: 55,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  onPressed: () {},
                  child: const Text(
                    "Pesan Perjalanan",
                    style: TextStyle(
                        color: kWhiteClr,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
