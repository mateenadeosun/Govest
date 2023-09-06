import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_vest_application/screens/new_savings_screen.dart';
import 'package:go_vest_application/screens/safelock_for30days.dart';
import 'package:go_vest_application/screens/savings_dashboard.dart';

class go_safelock extends StatefulWidget {
  const go_safelock({super.key});

  @override
  State<go_safelock> createState() => _go_safelockState();
}

class _go_safelockState extends State<go_safelock> {
  @override
  Widget build(BuildContext context) {
    String ReturnDays = "10 - 30 DAYS";
    String ReturnPerAnnum = "upto 6% per annum";
    String ReturnDays2 = "30 - 60 DAYS";
    String ReturnPerAnnum2 = "upto 10% per annum";
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new_savings_screen()));
                      },
                      child: Image.asset("assets/images/Cancel Botton.png")),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff3B5AFB).withOpacity(0.31),
                    ),
                    child: Image.asset("assets/images/Padlock.png"),
                  ),
                  SizedBox(
                    width: 20.sp,
                  ),
                  Text(
                    "Create GOSafe Lock",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff3B5AFB),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              SizedBox(
                width: 270.sp,
                child: Text(
                  "Amet rhoncus tellus quis vestibulum. Urna nullam placerat nunc, bibendum tincidunt egestas.",
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              safelock_for30days()));
                    },
                    child: SafelockContainer1(
                        ReturnDays: ReturnDays, ReturnPerAnnum: ReturnPerAnnum),
                  ),
                  SizedBox(
                    width: 10.sp,
                  ),
                  SafelockContainer2(
                      ReturnDays2: ReturnDays2,
                      ReturnPerAnnum2: ReturnPerAnnum2),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                children: [
                  SafelockContainer2(
                      ReturnDays2: ReturnDays2,
                      ReturnPerAnnum2: ReturnPerAnnum2),
                  SizedBox(
                    width: 10.sp,
                  ),
                  SafelockContainer1(
                      ReturnDays: ReturnDays, ReturnPerAnnum: ReturnPerAnnum)
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                children: [
                  SafelockContainer1(
                      ReturnDays: "60 - 90 DAYS",
                      ReturnPerAnnum: ReturnPerAnnum),
                  SizedBox(
                    width: 10.sp,
                  ),
                  SafelockContainer2(
                      ReturnDays2: "91 - 120 DAYS",
                      ReturnPerAnnum2: ReturnPerAnnum2)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SafelockContainer2 extends StatelessWidget {
  const SafelockContainer2({
    super.key,
    required this.ReturnDays2,
    required this.ReturnPerAnnum2,
  });

  final String ReturnDays2;
  final String ReturnPerAnnum2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172.sp,
      width: 155.sp,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r), color: Color(0xff3B5AFB)),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 26.sp,
              width: 26.sp,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.r),
                  color: Colors.white.withOpacity(0.3)),
              child: Image.asset("assets/images/Padlock W.png"),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Text(
              ReturnDays2,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10.sp,
            ),
            SizedBox(
              width: 130.sp,
              child: Text(
                "Lock funds away for short-term to avoid spending.",
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 58.sp,
                  child: Text(
                    ReturnPerAnnum2,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SafelockContainer1 extends StatelessWidget {
  const SafelockContainer1({
    super.key,
    required this.ReturnDays,
    required this.ReturnPerAnnum,
  });

  final String ReturnDays;
  final String ReturnPerAnnum;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172.sp,
      width: 155.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Color(0xff0EB51F),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 26.sp,
              width: 26.sp,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.r),
                  color: Colors.white.withOpacity(0.3)),
              child: Image.asset("assets/images/Padlock W.png"),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Text(
              ReturnDays,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10.sp,
            ),
            SizedBox(
              width: 130.sp,
              child: Text(
                "Lock funds away for short-term to avoid spending.",
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 58.sp,
                  child: Text(
                    ReturnPerAnnum,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
