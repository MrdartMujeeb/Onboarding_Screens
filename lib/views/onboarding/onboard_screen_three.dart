import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardScreenThree extends StatelessWidget {
  const OnboardScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/onboard_image_three.png",
            height: height * .3),
        SizedBox(
          height: height * .02,
        ),
        Text(
          "Sky-High Flavors",
          style:
              GoogleFonts.greatVibes(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: height * .02),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Enjoy exceptional dishes made just for you, enhance your dining experience.",
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
