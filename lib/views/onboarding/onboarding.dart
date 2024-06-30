import "package:flutter/material.dart";
import "package:foody/views/onboarding/onboard_screen_one.dart";
import "package:foody/views/onboarding/onboard_screen_three.dart";
import "package:foody/views/onboarding/onboard_screen_two.dart";
import "package:google_fonts/google_fonts.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController();
  String buttonText = "Skip";
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              currentPageIndex = index;
              if (index == 2) {
                buttonText = "Finsh";
              } else {
                buttonText = "Skip";
              }
              setState(() {});
            },
            children: const [
              OnboardScreenOne(),
              OnboardScreenTwo(),
              OnboardScreenThree(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    buttonText,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.black38,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                ),
                GestureDetector(
                  onTap: () {
                    _pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  child: currentPageIndex == 2
                      ? SizedBox(
                          width: width * .01,
                        )
                      : Text(
                          "Next",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black38,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
