import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Widgets/Constants.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class myclassCard extends StatelessWidget {
  final String imageUrl;
  final String percent;
  final String title;
  final String Subtitle;
  const myclassCard({
    super.key,
    required this.imageUrl,
    required this.percent,
    required this.title,
    required this.Subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Lottie.asset(
              imageUrl,
              width: 120,
              height: 120,
              fit: BoxFit.contain,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: appConstants.PrimaryColor,
                      fontWeight: FontWeight.w600,
                      wordSpacing: 4,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    Subtitle,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: appConstants.PrimaryColor,
                      fontWeight: FontWeight.w400,
                      wordSpacing: 4,
                    ),
                  ),

                  SizedBox(height: 10),
                  LinearProgressIndicator(
                    value: 0.4, // 40% complete
                    backgroundColor: Colors.grey[200],
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Colors.deepPurple,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '$percent% Complete',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
