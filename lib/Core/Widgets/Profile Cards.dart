// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Widgets/Constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final VoidCallback? onPressed;
  const ProfileCard({Key? key, required this.name, required this.onPressed})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: appConstants.PrimaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                SizedBox(height: 10),
                IconButton(
                  onPressed: onPressed,
                  icon: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
