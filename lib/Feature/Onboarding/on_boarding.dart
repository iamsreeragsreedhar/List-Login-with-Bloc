import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Widgets/Constants.dart';
import 'package:flutter_application_1/Core/Widgets/Custombutton.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({super.key});

  @override
  State<onBoarding> createState() => _onBoardingState();
}

String text = lorem(paragraphs: 1, words: 25);

class _onBoardingState extends State<onBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset(
                // 'assets/onboarding.json',
                'assets/b3.json',
                width: 500,
                height: 300,
                fit: BoxFit.fitWidth,
              ),
            ),
            Text(
              "Online Learning Platform",
              style: GoogleFonts.poppins(
                fontSize: 26,
                color: appConstants.PrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: const Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 50),
            CustomTextButton(context, "Get Started", Colors.white, () {
              context.push('/Login');
            }),
          ],
        ),
      ),
    );
  }

  Container CustomTextButton(BuildContext context, title, color, onpress) {
    return Container(
      width: 290,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: appConstants.PrimaryColor,
      ),

      child: TextButton(
        onPressed: onpress,
        child: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
