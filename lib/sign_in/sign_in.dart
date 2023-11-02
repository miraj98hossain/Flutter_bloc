import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttershopapp/sign_in/widget/signin_widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppbar(),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            buildThirdPartyLogin(context),
            const SizedBox(
              height: 10,
            ),
            Center(child: reusebleText("Login With Your Email Account")),
            Container(
              margin: EdgeInsets.only(top: 55.w),
              padding: EdgeInsets.only(left: 25.w, right: 25.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    reusebleText("Email"),
                    SizedBox(
                      height: 5.h,
                    ),
                    buildTextField("Enter Your Email", "email", "user"),
                    SizedBox(
                      height: 5.h,
                    ),
                    reusebleText("Password"),
                    SizedBox(
                      height: 5.h,
                    ),
                    buildTextField("Enter Your Password", "password", "user"),
                    SizedBox(
                      height: 5.h,
                    ),
                  ]),
            )
          ]),
        ),
      ),
    );
  }
}
