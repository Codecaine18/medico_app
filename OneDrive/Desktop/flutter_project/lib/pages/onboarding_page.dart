import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:FLUTTER_PROJECT/lib/pages/widget/onboarding_card.dart'; // Adjusted for your folder structure
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // This seems like a valid package

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() {
    return _OnboardingPageState();
  }
}

class _OnboardingPageState extends State<OnboardingPage> {
  static final PageController _pageController = PageController(initialPage: 0);
  final List<Widget> _onBoardingPages = [
    OnboardingCard(
      image: "assets/images/dcotor.jpeg",
      imageHeight: 400,
      imageWidth : 400,
      title: "Welcome to MediCo!",
      description:
          "Manage your health effortlessly and stay connected with your provider.",
      buttonText: 'Continue',
      // backgroundColor: Colors.blue;,
      onPressed: () {
        _pageController.animateToPage(1,
            duration: Durations.short4, curve: Curves.linear);
      },
    ),
    OnboardingCard(
      image: "assets/images/choose_doctor.png",
      title: "Choose Yout Doctor ",
      description:
          "At MediCo, we believe in personalized care. Choose from a curated selection of top-notch doctors who align with your needs and values. Whether it's a specialist, a compassionate family physician, or a wellness guru, find your perfect match. Your health, your choicer",
      buttonText: 'Continue',
      onPressed: () {
        _pageController.animateToPage(2,
            duration: Durations.long1, curve: Curves.ease);
      },
    ),
    OnboardingCard(
      image: "assets/images/hii.png",
      title: "Get Appointments with Doctor",
      description:
          "Schedule and manage your appointments effortlessly, all at your fingertips. Welcome to a new era of convenience with MediCo - Your health, our priority.",
      buttonText: 'Continue',
      onPressed: () {
        _pageController.animateToPage(3,
            duration: Durations.long1, curve: Curves.ease);
      },
    ),
    OnboardingCard(
      image: "assets/images/medical_his.png",
      title: "Your Health History at a Glance",
      description:
          "Effortlessly access and manage your medical records history to stay informed and connected with your healthcare provider",
      buttonText: 'Get Satrted',
      onPressed: () {
        _pageController.animateToPage(4,
            duration: Durations.long1, curve: Curves.ease);
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 107, 170, 181),
      body: Padding(
        // willl gives space between widgets
        padding: const EdgeInsets.symmetric(
          horizontal: 50.0,
        ), //for above images and all buttons , descriptions
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                //help  to embedd children  between it
                // pages(we can go within pages by swiping it is written above the indicator bcoz it is locatted above indicator)
                controller: _pageController,
                children: _onBoardingPages,
              ),
            ),
            // Adjust the height as needed
            SmoothPageIndicator(
              controller: _pageController,
              count: _onBoardingPages.length,
              effect: const WormEffect(
                paintStyle: PaintingStyle.stroke,
                strokeWidth: 1.5,
                dotColor: Color.fromARGB(255, 13, 4, 4),
                activeDotColor: Color.fromARGB(
                    255, 8, 10, 10), // Set the spacing between the dots

                // Set the color of the active dot
              ),
              onDotClicked: (index) {
                _pageController.animateToPage(
                  index,
                  duration: Durations.long1,
                  curve: Curves.linear,
                );
              },
            ),
            Positioned(
              child: TextButton(
                onPressed: () {
                  _pageController.jumpToPage(_onBoardingPages.length - 1);
                },
                child: Text(
                  "Skip",
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
