import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Widgets/BookclassCard.dart';
import 'package:flutter_application_1/Core/Widgets/Constants.dart';
import 'package:flutter_application_1/Core/Widgets/CustomTextButton.dart';
import 'package:flutter_application_1/Core/Widgets/LastclassCard.dart';
import 'package:flutter_application_1/Feature/Homepage/Presentation/Bloc/bloc/login_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

class Bookclass extends StatefulWidget {
  const Bookclass({super.key});

  @override
  State<Bookclass> createState() => _BookclassState();
}

List SubjectList = [
  'Flutter Development',
  'MERN Stack',
  'Data Science',
  'Python Development',
];
List ClasstypeList = [
  'Online Class',
  'Offline Class',
  'Hybrid Class',
  'Self-paced Class',
];

class _BookclassState extends State<Bookclass> {
  bool _valueClicked = false;
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
            padding: EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  Text(
                    "Book a Class",
                    style: GoogleFonts.poppins(
                      fontSize: 26,
                      color: appConstants.PrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        BookclassCard(
                          imageUrl: 'assets/class3.json',
                          category: 'Programming',
                          title: 'Data Science',
                          duration: '1 hours',
                        ),
                        BookclassCard(
                          imageUrl: 'assets/class1.json',
                          category: 'Programming',
                          title: 'Flutter Development',
                          duration: '3 hours',
                        ),
                        BookclassCard(
                          imageUrl: 'assets/class3.json',
                          category: 'Programming',
                          title: 'Data Science',
                          duration: '1 hours',
                        ),
                        BookclassCard(
                          imageUrl: 'assets/class2.json',
                          category: 'Programming',
                          title: 'MERN ',
                          duration: '3 hours',
                        ),

                        BookclassCard(
                          imageUrl: 'assets/class4.json',
                          category: 'Programming',
                          title: 'Python Development',
                          duration: '1 hours',
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Select Class",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: appConstants.PrimaryColor,
                              fontWeight: FontWeight.w600,
                              wordSpacing: 4,
                            ),
                          ),

                          DropdownButton(
                            items: SubjectList.map<DropdownMenuItem<String>>(
                              (value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ),
                            ).toList(),
                            onChanged: (value) {
                              setState(() {
                                value = value;
                              });
                            },
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            "Class Type",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: appConstants.PrimaryColor,
                              fontWeight: FontWeight.w600,
                              wordSpacing: 4,
                            ),
                          ),
                          DropdownButton(
                            items: ClasstypeList.map<DropdownMenuItem<String>>(
                              (value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ),
                            ).toList(),
                            onChanged: (value) {
                              setState(() {
                                value = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        BookclassCard(
                          imageUrl: 'assets/class3.json',
                          category: 'Programming',
                          title: 'Data Science',
                          duration: '1 hours',
                        ),
                        BookclassCard(
                          imageUrl: 'assets/class1.json',
                          category: 'Programming',
                          title: 'Flutter Development',
                          duration: '3 hours',
                        ),
                        BookclassCard(
                          imageUrl: 'assets/class3.json',
                          category: 'Programming',
                          title: 'Data Science',
                          duration: '1 hours',
                        ),
                        BookclassCard(
                          imageUrl: 'assets/class2.json',
                          category: 'Programming',
                          title: 'MERN ',
                          duration: '3 hours',
                        ),
                        BookclassCard(
                          imageUrl: 'assets/class3.json',
                          category: 'Programming',
                          title: 'Data Science',
                          duration: '1 hours',
                        ),
                        BookclassCard(
                          imageUrl: 'assets/class3.json',
                          category: 'Programming',
                          title: 'Data Science',
                          duration: '1 hours',
                        ),
                        BookclassCard(
                          imageUrl: 'assets/class4.json',
                          category: 'Programming',
                          title: 'Python Development',
                          duration: '1 hours',
                        ),

                        BookclassCard(
                          imageUrl: 'assets/class4.json',
                          category: 'Programming',
                          title: 'Python Development',
                          duration: '1 hours',
                        ),

                        BookclassCard(
                          imageUrl: 'assets/class3.json',
                          category: 'Programming',
                          title: 'Data Science',
                          duration: '1 hours',
                        ),
                        BookclassCard(
                          imageUrl: 'assets/class4.json',
                          category: 'Programming',
                          title: 'Python Development',
                          duration: '1 hours',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        value: _valueClicked,
                        onChanged: (value) {
                          setState(() {
                            _valueClicked = value ?? false;
                          });
                        },
                      ),
                      Text(
                        "Are you sure with  Selected Class  ?",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: appConstants.PrimaryColor,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 4,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: CustomTextButton(
                      title: "Book Class Now",
                      textColor: Colors.white,
                      onPress: () {},
                    ),
                  ),
                ],
              ),
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
