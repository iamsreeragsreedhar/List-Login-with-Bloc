import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Routes/routes.dart';
import 'package:flutter_application_1/Feature/Homepage/Domain/Repositories.dart';
import 'package:flutter_application_1/Feature/Homepage/Presentation/Bloc/bloc/login_bloc.dart';
import 'package:flutter_application_1/Feature/Auth/Presentation/Loginpage.dart';
import 'package:flutter_application_1/Feature/Splash/splash_screen.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginBloc(HomepageRepositories())),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
