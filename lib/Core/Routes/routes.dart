import 'package:flutter/material.dart';
import 'package:flutter_application_1/Feature/Auth/Presentation/Loginpage.dart';
import 'package:flutter_application_1/Feature/Book%20Class/Bookclass.dart';
import 'package:flutter_application_1/Feature/Course%20level/course_level.dart';
import 'package:flutter_application_1/Feature/Homepage/Presentation/Screens/Homepage.dart';
import 'package:flutter_application_1/Feature/Profile/Profile.dart';
import 'package:flutter_application_1/Feature/MyClasses/myclass.dart';
import 'package:flutter_application_1/Feature/Onboarding/on_boarding.dart';
import 'package:flutter_application_1/Feature/Splash/splash_screen.dart';
import 'package:flutter_application_1/test.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/Splash',
  routes: [
    GoRoute(path: '/Splash', builder: (context, state) => const splashscreen()),
    GoRoute(path: '/OnBoard', builder: (context, state) => const onBoarding()),
    GoRoute(path: '/Profile', builder: (context, state) => const Profilepage()),
    GoRoute(path: '/Login', builder: (context, state) => const Loginpage()),
    GoRoute(path: '/Home', builder: (context, state) => const Homepage()),
    GoRoute(
      path: '/courselevel',
      builder: (context, state) => const Courselevel(),
    ),
    GoRoute(path: '/myclass', builder: (context, state) => const MyClass()),
    GoRoute(path: '/bookclass', builder: (context, state) => const Bookclass()),

    GoRoute(path: '/test', builder: (context, state) => MySegmentedControl()),
  ],
);
