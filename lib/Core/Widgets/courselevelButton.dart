// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Widgets/Constants.dart';
import 'package:google_fonts/google_fonts.dart';

class CourselevelBtn extends StatefulWidget {
  String data;
  CourselevelBtn({Key? key, required this.data}) : super(key: key);

  @override
  State<CourselevelBtn> createState() => _CourselevelBtnState();
}

class _CourselevelBtnState extends State<CourselevelBtn> {
  @override
  bool isSelected = false;

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: (isSelected == true)
            ? appConstants.PrimaryColor
            : appConstants.TextBtnBGColor,
      ),
      child: TextButton(
        onPressed: () {
          print("Button Pressed");
          setState(() {
            isSelected = !isSelected;
            print("Button is now ${isSelected ? 'selected' : 'unselected'}");
          });
        },
        child: Text(
          widget.data,
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: (isSelected == true)
                ? appConstants.TextFontColor
                : appConstants.PrimaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
