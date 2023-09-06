import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_vest_application/screens/create_go_savings.dart';
import 'package:go_vest_application/screens/go_safelock.dart';

class new_savings_screen extends StatefulWidget {
  const new_savings_screen({super.key});

  @override
  State<new_savings_screen> createState() => _new_savings_screenState();
}

class _new_savings_screenState extends State<new_savings_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/Cancel Botton.png"),
                  Image.asset("assets/images/Info.png"),
                ],
              ),
              SizedBox(
                height: 70.sp,
              ),
              Center(
                child: Container(
                  width: 200.sp,
                  height: 200.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: Color(0xff3B5AFB),
                  ),
                  child: Image.asset("assets/images/Readings.png"),
                ),
              ),
              SizedBox(
                height: 40.sp,
              ),
              Text(
                "Savings Discipline",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              SizedBox(
                width: 267.sp,
                child: Text(
                  "Save with discipline towards a specific goal or target. Earn interests daily, weekly or mnthly.",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Image.asset("assets/images/Scroll.png"),
              SizedBox(
                height: 30.sp,
              ),
              GestureDetector(
                onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                create_go_savings()));
                      },
                child: Container(
                  height: 66.sp,
                  width: 278.sp,
                  decoration: BoxDecoration(
                    color: Color(0xff3B5AFB),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: Text(
                      "CREATE GOSAVINGS",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => go_safelock()));
                },
                child: Container(
                  height: 66.sp,
                  width: 278.sp,
                  decoration: BoxDecoration(
                    color: Color(0xff0EB51F),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "CREATE GOSAFE",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 20.sp,
                      ),
                      Image.asset("assets/images/Padlock W.png"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
