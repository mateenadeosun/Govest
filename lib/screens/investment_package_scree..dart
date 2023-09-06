import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_vest_application/screens/SetupKYCScreen.dart';
import 'package:go_vest_application/screens/add_bank.dart';
import 'package:go_vest_application/screens/dashboard_screen.dart';
import 'package:go_vest_application/screens/profile_screen.dart';
import 'package:go_vest_application/screens/sign_in.dart';
import 'package:go_vest_application/screens/transaction_history.dart';

class investment_package_screen extends StatefulWidget {
  const investment_package_screen({super.key});

  @override
  State<investment_package_screen> createState() =>
      _investment_package_screenState();
}

class _investment_package_screenState extends State<investment_package_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3B5AFB),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => sign_in()));
                  },
                  child: Image.asset("assets/images/Cancel.png")),
              SizedBox(
                height: 10.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Ganni West",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Image.asset("assets/images/Profile.png"),
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => dashboard_screen()));
                },
                child: Row(
                  children: [
                    Text(
                      "Go",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 5.sp,
                    ),
                    Text(
                      "Dashboard",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => profile_screen()));
                },
                child: Row(
                  children: [
                    Image.asset("assets/images/Profile icon.png"),
                    SizedBox(
                      width: 5.sp,
                    ),
                    Text(
                      "Profile account",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => transaction_history()));
                },
                child: Row(
                  children: [
                    Image.asset("assets/images/Receipt.png"),
                    SizedBox(
                      width: 5.sp,
                    ),
                    Text(
                      "Transaction History",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => AddBankScreen()));
                },
                child: Row(
                  children: [
                    Image.asset("assets/images/Debit Card.png"),
                    SizedBox(
                      width: 5.sp,
                    ),
                    Text(
                      "Bank & Debit Card",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => SetupKYCScreen()));
                },
                child: Row(
                  children: [
                    Image.asset("assets/images/Setup.png"),
                    SizedBox(
                      width: 5.sp,
                    ),
                    Text(
                      "Setup KYC",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                children: [
                  Image.asset("assets/images/About.png"),
                  SizedBox(
                    width: 5.sp,
                  ),
                  Text(
                    "About GoVest",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                children: [
                  Image.asset("assets/images/Customer Center.png"),
                  SizedBox(
                    width: 5.sp,
                  ),
                  Text(
                    "Customer Center",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 60.sp,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => sign_in()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 68.sp,
                      width: 149.sp,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7.r),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Log out",
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff3B5AFB),
                              ),
                            ),
                            Image.asset("assets/images/Log out.png"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
