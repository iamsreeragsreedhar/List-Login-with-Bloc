import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Widgets/Constants.dart';
import 'package:flutter_application_1/Core/Widgets/MyClassCard.dart';
import 'package:flutter_application_1/Feature/Homepage/Presentation/Bloc/bloc/login_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class MyClass extends StatefulWidget {
  const MyClass({super.key});

  @override
  State<MyClass> createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.selectedIndex == 0) {
          context.push('/Home');
        } else if (state.selectedIndex == 1) {
          context.push('/myclass');
        } else if (state.selectedIndex == 2) {
          context.push('/Profile');
        } else {}
      },
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text(
                  "My Classes",
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    color: appConstants.PrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // ArtsHumanitiesCard(),
                myclassCard(
                  imageUrl: 'assets/class4.json',
                  title: "Data Science",
                  Subtitle: "Programming",
                  percent: '50',
                ),
                myclassCard(
                  imageUrl: 'assets/class1.json',
                  title: "Flutter Development",
                  Subtitle: "Programming",
                  percent: '80',
                ),
              ],
            ),
          ),
          extendBody: true,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.selectedIndex,
            onTap: (index) {
              context.read<LoginBloc>().add(BottomSelectedItems(index));
            },
            type: BottomNavigationBarType.fixed,

            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.book), label: 'MyClass'),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
