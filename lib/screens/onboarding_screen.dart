import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_vest_application/screens/signup_screen.dart';

class onboarding_screen extends StatefulWidget {
  const onboarding_screen({super.key});

  @override
  State<onboarding_screen> createState() => _onboarding_screenState();
}

class _onboarding_screenState extends State<onboarding_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Padding(
            padding: EdgeInsets.all(20.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Skip",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3B5AFB)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Center(
                    child: Image.asset('assets/images/Onboarding Image1.png')),
                SizedBox(
                  height: 30.sp,
                ),
                SizedBox(
                  width: 275.sp,
                  child: Text(
                    "Get in a simple way of increasing your wealth",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff3B5AFB)),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 90.sp,
                ),
                Center(
                  child: Container(
                    height: 54.sp,
                    width: 330.sp,
                    decoration: BoxDecoration(
                      color: Color(0xff3B5AFB),
                      borderRadius: BorderRadius.circular(82.r),
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          // Onboarding 2
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xff3b5afb),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Skip",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffffffff)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Center(
                      child:
                          Image.asset('assets/images/Onboarding Image2.png')),
                  SizedBox(
                    height: 30.sp,
                  ),
                  Center(
                    child: SizedBox(
                      width: 275.sp,
                      child: Text(
                        "Get access to best investment assets",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 90.sp,
                  ),
                  Center(
                    child: Container(
                      height: 54.sp,
                      width: 180.sp,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(82.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff3B5AFB)),
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            color: Color(0xff3B5AFB),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          //Onboarding 3
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.all(20.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Skip",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff3B5AFB)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Center(
                      child:
                          Image.asset('assets/images/Onboarding Image3.png')),
                  SizedBox(
                    height: 30.sp,
                  ),
                  Center(
                    child: SizedBox(
                      width: 275.sp,
                      child: Text(
                        "Get in a simple way of increasing your wealth",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff3B5AFB)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 90.sp,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                signup_screen()));
                      },
                      child: Container(
                        height: 54.sp,
                        width: 330.sp,
                        decoration: BoxDecoration(
                          color: Color(0xff3B5AFB),
                          borderRadius: BorderRadius.circular(82.r),
                        ),
                        child: Center(
                          child: Text(
                            "Create an account",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffffffff)),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
