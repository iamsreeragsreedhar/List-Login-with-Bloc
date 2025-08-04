import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Widgets/Constants.dart';
import 'package:flutter_application_1/Feature/Onboarding/on_boarding.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_route/auto_route.dart';
import 'package:go_router/go_router.dart';

@RoutePage()
class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      context.push('/OnBoard');
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appConstants.PrimaryColor,
      body: Center(
        child: Text(
          "Learning App",
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 40,
            color: appConstants.TextFontColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
