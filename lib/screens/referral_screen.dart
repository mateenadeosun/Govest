import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class referral_screen extends StatefulWidget {
  const referral_screen({super.key});

  @override
  State<referral_screen> createState() => _referral_screenState();
}

class _referral_screenState extends State<referral_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/Profile.png"),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30.sp,
                      ),
                      children: [
                        TextSpan(
                          text: "Go",
                          style: TextStyle(color: Color(0xff2A52E2)),
                        ),
                        TextSpan(
                          text: "VEST",
                          style: TextStyle(
                            color: Color(0xff0EB51F),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff2A52E2),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "10% ",
                                style: TextStyle(
                                  fontSize: 48.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 20.sp,
                              ),
                              Text(
                                "Commission",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          Image.asset("assets/images/Commission.png")
                        ],
                      ),
                      SizedBox(
                        height: 40.sp,
                      ),
                      Text(
                        "Earn commission for every transaction made by the person you refer.",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40.sp,
              ),
              Text(
                "Copy your referral code",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15.sp,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 112.sp,
                decoration: BoxDecoration(
                  color: Color(0xff60F248).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "GO-12FRGDT",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 112.sp,
                      decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10.r),
                          color: Color(0xff3B5AFB)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/Copy.png"),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Text(
                            "Tap to Copy",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  height: 142.sp,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff979797)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sign-Ups",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff979797)),
                            ),
                            Text(
                              "Sign-Ups with Trading",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff979797),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "10",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "7",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 2.sp,
                          decoration: BoxDecoration(
                            color: Color(0xff979797),
                          ),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Bonus Earned",
                              style: TextStyle(
                                color: Color(0xff979797),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Bonus per referral",
                              style: TextStyle(
                                color: Color(0xff979797),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                // Image.asset("assets/images/Naira.png"),
                                SizedBox(
                                  width: 5.sp,
                                ),
                                Text(
                                  "N 3,500.00",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                // Image.asset("assets/images/Naira.png"),
                                SizedBox(
                                  width: 5.sp,
                                ),
                                Text(
                                  "N 500.00",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  height: 142.sp,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Color(0xff979797)),
                  ),
                  child: Center(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/Download.png"),
                      Text(
                        "Share Link",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
