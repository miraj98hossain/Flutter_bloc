import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttershopapp/welcome/bloc/welcome_bloc.dart';
import 'package:fluttershopapp/welcome/page_view_pages.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  PageController pageController = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WelcomeBloc, WelcomeState>(
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.only(top: 34.h),
            width: 375.w,
            child: Stack(children: [
              PageView(
                controller: pageController,
                children: [
                  PageViewPages(
                    index: 1,
                    context: context,
                    image: "assets/images/reading.png",
                    text: "First See Learning",
                    text2:
                        "Forget About a For of Paper All Knowledge in One learning",
                    buttonName: "Next",
                    pageController: pageController,
                  ),
                  PageViewPages(
                      index: 2,
                      context: context,
                      image: "assets/images/boy.png",
                      text: "Connect With Everyone",
                      text2: "Always Keep In Touch With Everyone",
                      buttonName: "Next",
                      pageController: pageController),
                  PageViewPages(
                      index: 3,
                      context: context,
                      image: "assets/images/man.png",
                      text: "Always Fascinated learning",
                      text2: "Anywhere, Anytime.",
                      buttonName: "Get Started",
                      pageController: pageController),
                ],
              )
            ]),
          );
        },
      ),
    );
  }
}
