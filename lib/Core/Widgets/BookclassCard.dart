import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Widgets/Constants.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class BookclassCard extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String title;
  final String duration;

  const BookclassCard({
    super.key,
    required this.imageUrl,
    required this.category,
    required this.title,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,

      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top image section
            Lottie.asset(
              imageUrl,
              width: 400,
              height: 100,
              fit: BoxFit.contain,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      color: appConstants.PrimaryColor,
                      fontWeight: FontWeight.w400,
                      wordSpacing: 4,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    duration,
                    style: TextStyle(color: Colors.grey[600], fontSize: 13),
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
