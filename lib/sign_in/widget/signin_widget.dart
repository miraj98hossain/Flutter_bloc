import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

PreferredSizeWidget buildAppbar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Center(
      child: Text(
        "Log In",
        style: TextStyle(
            color: Colors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.normal),
      ),
    ),
  );
}

Widget buildThirdPartyLogin(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      GestureDetector(
        onTap: () {},
        child: Container(
          width: 40.w,
          height: 40.w,
          child: Image.asset('assets/icons/google.png'),
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: Container(
          width: 40.w,
          height: 40.w,
          child: Image.asset('assets/icons/apple.png'),
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: Container(
          width: 40.w,
          height: 40.w,
          child: Image.asset('assets/icons/facebook.png'),
        ),
      )
    ]),
  );
}

Widget reusebleText(String text) {
  return Container(
    margin: EdgeInsets.only(bottom: 5.h),
    child: Text(
      text,
      style: TextStyle(
          color: Colors.grey.withOpacity(0.5),
          fontSize: 14.sp,
          fontWeight: FontWeight.normal),
    ),
  );
}

Widget buildTextField(String text, String textType, String iconName) {
  return Container(
    width: 325.w,
    height: 50.h,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(15.w),
      ),
      border: Border.all(color: Colors.black),
    ),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10.w),
          width: 16.w,
          height: 16.w,
          child: Image.asset('assets/icons/$iconName.png'),
        ),
        Container(
          width: 220.w,
          height: 50.w,
          child: TextField(
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: text,
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
            autocorrect: false,
            obscureText: textType == 'password' ? true : false,
          ),
        )
      ],
    ),
  );
}

Widget forgotPaswordText() {
  return Container(
    width: 260.w,
    height: 44.h,
    margin: EdgeInsets.only(bottom: 5.h),
    child: GestureDetector(
      onTap: () {},
      child: Text(
        "Forgot Password ?",
        style: TextStyle(
            color: Colors.black, fontSize: 14.sp, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
