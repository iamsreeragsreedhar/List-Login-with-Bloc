import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Widgets/Constants.dart';
import 'package:flutter_application_1/Core/Widgets/CustomTextButton.dart';
import 'package:flutter_application_1/Core/Widgets/Custombutton.dart';
import 'package:flutter_application_1/Core/Widgets/TextfieldCommon.dart';

import 'package:flutter_application_1/Feature/Homepage/Presentation/Bloc/bloc/login_bloc.dart';
import 'package:flutter_application_1/Feature/Homepage/Presentation/Screens/Homepage.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _HomepageState();
}

class _HomepageState extends State<Loginpage> {
  TextEditingController controller = TextEditingController(text: "emilys");
  TextEditingController passcontroller = TextEditingController(
    text: "emilyspass",
  );

  bool _valueClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Text(
              "LOG IN",
              style: GoogleFonts.poppins(
                fontSize: 25,
                color: appConstants.PrimaryColor,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Learning App",
              style: GoogleFonts.poppins(
                fontSize: 24,
                color: appConstants.PrimaryColor,
                fontWeight: FontWeight.w600,
                wordSpacing: 4,
              ),
            ),
            SizedBox(height: 50),
            Text(
              "Enter your log in details to \n access your account",
              style: GoogleFonts.poppins(
                fontSize: 21,
                color: appConstants.PrimaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(
                      255,
                      33,
                      72,
                      243,
                    ).withOpacity(0.8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Facebook",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(
                      255,
                      243,
                      33,
                      33,
                    ).withOpacity(0.8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.googlePlus,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Google",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            TextfieldCommon(controller: controller, label: "username"),
            TextfieldCommon(
              controller: passcontroller,
              label: "Password",
              // isPassword: true,
              maxlines: 1,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: _valueClicked,
                  onChanged: (value) {
                    setState(() {
                      _valueClicked = value ?? false;
                    });
                  },
                ),
                const Text(
                  "Remember me",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),

                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            BlocListener<LoginBloc, LoginState>(
              listener: (context, state) {
                // if (state.isLoading == false && state.data.isNotEmpty) {

                // }
              },
              child: CustomTextButton(
                title: "Login",
                textColor: Colors.white,
                onPress: () {
                  context.push('/courselevel');
                  // if (controller.text.isNotEmpty &&
                  //     passcontroller.text.isNotEmpty) {
                  //   context.read<LoginBloc>().add(
                  //     LoginCheck(controller.text, passcontroller.text),
                  //   );
                  // } else {
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(
                  //       content: Text("Please fill in all fields"),
                  //     ),
                  //   );
                  // }
                },
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 2,
                  child: Text(
                    "Don't have an account?",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: appConstants.PrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Create a Account",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
