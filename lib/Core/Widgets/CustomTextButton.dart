import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Widgets/Constants.dart';
import 'package:google_fonts/google_fonts.dart';

// You can optionally pass the button width and other properties if you want to make it more flexible.
class CustomTextButton extends StatelessWidget {
  final String title;
  final Color textColor;
  final VoidCallback onPress;
  final double width;
  final Color backgroundColor;
  final double borderRadius;

  const CustomTextButton({
    Key? key,
    required this.title,
    required this.textColor,
    required this.onPress,
    this.width = 290,
    this.backgroundColor = appConstants.PrimaryColor,
    this.borderRadius = 25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: backgroundColor,
      ),
      child: TextButton(
        onPressed: onPress,
        child: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
