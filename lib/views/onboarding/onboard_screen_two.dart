import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardScreenTwo extends StatelessWidget {
  const OnboardScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/onboard_image_two.png", height: height * .3),
        SizedBox(
          height: height * .02,
        ),
        Text(
          "Meal Customization",
          style:
              GoogleFonts.greatVibes(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: height * .02),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Customize your dish for the ultimate enjoyment.",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.black.withOpacity(0.6),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
