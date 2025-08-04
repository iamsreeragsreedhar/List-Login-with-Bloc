import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Widgets/Constants.dart';
import 'package:flutter_application_1/Core/Widgets/LastclassCard.dart';
import 'package:flutter_application_1/Feature/Homepage/Data/Models/DataListModel.dart';
import 'package:flutter_application_1/Feature/Homepage/Presentation/Bloc/bloc/login_bloc.dart';
import 'package:flutter_application_1/Feature/Profile/Profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void initState() {
    context.read<LoginBloc>().add(ProfileDetails());
    super.initState();
  }

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
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Text(
                  "Welcome Back \n Username",
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    color: appConstants.PrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 50),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 160,
                      decoration: BoxDecoration(
                        color: appConstants.PrimaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Your Courses",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: appConstants.TextFontColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        context.push('/bookclass');
                      },
                      child: Container(
                        height: 100,
                        width: 160,
                        decoration: BoxDecoration(
                          color: appConstants.PrimaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Book Class",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: appConstants.TextFontColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  "Last Classes",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: appConstants.PrimaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CourseCard(
                        imageUrl: 'assets/class1.json',
                        category: 'Programming',
                        title: 'Flutter Development',
                        duration: '3 hours',
                      ),
                      CourseCard(
                        imageUrl: 'assets/class2.json',
                        category: 'Programming',
                        title: 'MERN ',
                        duration: '3 hours',
                      ),
                      CourseCard(
                        imageUrl: 'assets/class3.json',
                        category: 'Programming',
                        title: 'Data Science',
                        duration: '1 hours',
                      ),
                      CourseCard(
                        imageUrl: 'assets/class4.json',
                        category: 'Programming',
                        title: 'Python Development',
                        duration: '1 hours',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          extendBody: true,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.selectedIndex,
            onTap: (index) {
              context.read<LoginBloc>().add(BottomSelectedItems(index));
              print(index);
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
