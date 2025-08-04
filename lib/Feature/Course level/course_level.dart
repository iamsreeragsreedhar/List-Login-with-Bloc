import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Widgets/Constants.dart';
import 'package:flutter_application_1/Core/Widgets/CustomTextButton.dart';
import 'package:flutter_application_1/Core/Widgets/courselevelButton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:go_router/go_router.dart';

class Courselevel extends StatefulWidget {
  const Courselevel({super.key});

  @override
  State<Courselevel> createState() => _CourselevelState();
}

class _CourselevelState extends State<Courselevel> {
  @override
  bool _valueClicked = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Center(
              child: Text(
                "Learning App",
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  color: appConstants.PrimaryColor,
                  fontWeight: FontWeight.w600,
                  wordSpacing: 4,
                ),
              ),
            ),
            SizedBox(height: 30),
            Lottie.asset(
              'assets/courselevel.json',
              width: 500,
              height: 300,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: 30),
            Text(
              "Select your course level",
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: appConstants.PrimaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 20),

            Row(
              children: [
                CourselevelBtn(data: "Beginner"),
                SizedBox(width: 10),
                CourselevelBtn(data: "Intermediate"),
                SizedBox(width: 10),
                CourselevelBtn(data: "Advanced"),
              ],
            ),
            SizedBox(height: 80),

            Row(
              children: [
                Checkbox(
                  value: _valueClicked,
                  onChanged: (value) {
                    setState(() {
                      _valueClicked = value ?? false;
                    });
                  },
                ),

                Text(
                  "Are you sure?",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: appConstants.PrimaryColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Center(
              child: CustomTextButton(
                title: "Continue",
                textColor: Colors.white,
                onPress: () {
                  context.push('/Home');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
