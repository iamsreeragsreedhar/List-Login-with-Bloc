import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Widgets/Constants.dart';
import 'package:flutter_application_1/Core/Widgets/Custombutton.dart';
import 'package:flutter_application_1/Core/Widgets/Profile%20Cards.dart';
import 'package:flutter_application_1/Feature/Homepage/Presentation/Bloc/bloc/login_bloc.dart';
import 'package:flutter_application_1/Feature/Homepage/Presentation/Screens/Homepage.dart';
import 'package:flutter_application_1/Feature/Auth/Presentation/Loginpage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfileState();
}

class _ProfileState extends State<Profilepage> {
  int _selectedIndex = 0;

  @override
  void initState() {
    context.read<LoginBloc>().add(ProfileDetails());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        print("state.selectedIndex ${state.selectedIndex}");
        if (state.selectedIndex == 0) {
          context.push('/Home');
        } else if (state.selectedIndex == 1) {
          context.push('/myclass');
        } else if (state.selectedIndex == 2) {
          context.push('/Profilepage');
        }
      },
      builder: (context, state) {
        // print(state.Profiledata[0]['username']);
        // print(state.data[0]['image']);
        // print("Profilepage State: ${state.Profiledata}");
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 60),
                Text(
                  "Profile",
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    color: appConstants.PrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 40),
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(color: appConstants.PrimaryColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(radius: 50),
                      Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "John Doe",
                            style: GoogleFonts.poppins(
                              fontSize: 26,
                              color: appConstants.TextBtnBGColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "JohnDoe@gmail.com",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: appConstants.TextBtnBGColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ProfileCard(name: "Account Setting", onPressed: () {}),
                ProfileCard(name: "Download options", onPressed: () {}),
                ProfileCard(name: "Notifications Setting", onPressed: () {}),
                ProfileCard(name: "Privacy & Policy", onPressed: () {}),
                ProfileCard(name: "Help Center", onPressed: () {}),
                ProfileCard(name: "About Us", onPressed: () {}),
                ProfileCard(name: "Delete Account", onPressed: () {}),

                SizedBox(height: 20),

                CustomButton(
                  text: "Logout",
                  onPressed: () {
                    context.push('/Login');
                  },
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
