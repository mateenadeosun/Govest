import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_vest_application/screens/go_safelock.dart';
import 'package:go_vest_application/screens/safelock_preview.dart';

class safelock_for30days extends StatefulWidget {
  const safelock_for30days({super.key});

  @override
  State<safelock_for30days> createState() => _safelock_for30daysState();
}

class _safelock_for30daysState extends State<safelock_for30days> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => go_safelock()));
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
                    "SafeLock for 10-30 Days",
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
                width: 310,
                child: Text(
                  "Create a safelock for 10-30 days with a return close to 6%. The longer the payback date, the higher your return.",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "How much ?",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff979797),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    bottom: 5.0), // Adjust the padding as needed
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black, // Color of the bottom border
                      width: 2.0, // Width of the bottom border
                    ),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter Amount',
                    prefixIcon: Image.asset(
                        "assets/images/Naira Bl.png"), // Placeholder text
                    labelStyle: TextStyle(
                        color: Colors.black), // Color of the label text
                    border: InputBorder.none, // Hide the default border
                  ),
                ),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Row(
                children: [
                  Image.asset('assets/images/Mark.png'),
                  SizedBox(
                    width: 5.sp,
                  ),
                  Text(
                    "Type in amount you would like to lock",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff979797)),
                  )
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Set Title',
                    labelStyle: TextStyle(color: Color(0xff979797)),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "Payback Date",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff979797),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.calendar_today,
                      color: Color(0xff979797),
                      size: 30.sp,
                    ),
                    labelText: 'The longer it is, the higher your return.',
                    labelStyle: TextStyle(
                        color: Color(0xff979797),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 7.sp,
              ),
              Row(
                children: [
                  Image.asset("assets/images/Green Wave.png"),
                  SizedBox(
                    width: 10.sp,
                  ),
                  Text(
                    "Your return is 0.5 % at 10 days.",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "Select source of fund",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff979797)),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.arrow_downward,
                      color: Color(0xff979797),
                      size: 30.sp,
                    ),
                    //
                  ),
                ),
              ),
              SizedBox(
                height: 50.sp,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => safelock_preview()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xff3B5AFB),
                  ),
                  child: Center(
                    child: Text(
                      "Preview GoSafe",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
