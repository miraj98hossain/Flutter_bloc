import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttershopapp/homepage/homepage.dart';

class PageViewPages extends StatefulWidget {
  PageViewPages(
      {super.key,
      required this.index,
      required this.context,
      required this.image,
      required this.text,
      required this.text2,
      required this.buttonName,
      required this.pageController});
  int index;
  BuildContext context;
  String image;
  String text;
  String text2;
  String buttonName;
  PageController pageController;

  @override
  State<PageViewPages> createState() => _PageViewPagesState();
}

class _PageViewPagesState extends State<PageViewPages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Image.asset(
            widget.image,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Text(
            widget.text,
            style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.normal),
          ),
        ),
        Container(
          width: 375.w,
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Text(
            widget.text2,
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 14.sp,
                fontWeight: FontWeight.normal),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            if (widget.index < 3) {
              widget.pageController.animateToPage(widget.index,
                  duration: const Duration(microseconds: 500),
                  curve: Curves.decelerate);
            } else {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil("signin", (route) => false);
            }
          },
          child: Container(
            margin: EdgeInsets.all(25.w),
            width: 325.w,
            height: 50.h,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(15.w),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 2),
                  ),
                ]),
            child: Center(
                child: Text(
              widget.buttonName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal),
            )),
          ),
        )
      ],
    );
  }
}
