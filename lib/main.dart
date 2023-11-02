import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttershopapp/homepage/homepage.dart';
import 'package:fluttershopapp/sign_in/sign_in.dart';
import 'package:fluttershopapp/welcome/bloc/welcome_bloc.dart';
import 'package:fluttershopapp/welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WelcomeBloc(),
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          home: Welcome(),
          debugShowCheckedModeBanner: false,
          routes: {
            'homepage': (context) => const HomePage(),
            "signin": (context) => const SignIn()
          },
        ),
      ),
    );
  }
}
