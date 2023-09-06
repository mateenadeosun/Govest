import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_vest_application/screens/onboarding_screen.dart';
import 'package:go_vest_application/screens/sign_in.dart';

class signup_screen extends StatefulWidget {
  const signup_screen({super.key});

  @override
  State<signup_screen> createState() => _signup_screenState();
}

class _signup_screenState extends State<signup_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3B5AFB),
      body: Padding(
        padding: EdgeInsets.all(20.sp),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => onboarding_screen()));
                },
                    child: Image.asset("assets/images/Back Button.png")),
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
                  )
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                "Hello there,",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Become a Titan",
                
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Row(
                children: [
                  TextFIeeeee(name: "Last Name"),
                  Spacer(),
                  TextFIeeeee(name: "First Name"),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Textfield1(name: "Phone Number"),
              SizedBox(
                height: 20,
              ),
              Textfield1(name: "Email Address "),
              SizedBox(
                height: 20.sp,
              ),
              Textfield1(name: "Password"),
              SizedBox(
                height: 20.sp,
              ),
              Textfield1(name: "Confirm Password"),
              SizedBox(
                height: 20.sp,
              ),
              Textfield2(
                  name: "Referral code (optional)",
                  imagepath: "assets/images/Referral.png"),
              SizedBox(
                height: 5.sp,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/Exclamation.png",
                  ),
                  Text(
                    "Your friend get rewarded when you use their referal code.",
                    style: TextStyle(color: Colors.white, fontSize: 10.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 40.sp,
              ),
              SizedBox(
                width: 220.sp,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                    ),
                    children: [
                      TextSpan(
                        text: "By signing up, you agree to the ",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextSpan(
                        text: "Terms of Use & Privacy Policy",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => sign_in()));
                },
                child: Container(
                  width: 366.sp,
                  height: 55.sp,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(49, 255, 255, 255),
                    borderRadius: BorderRadius.circular(7.r),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                    child: Text(
                      "Become A Family",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => sign_in()));
                },
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                      ),
                      children: [
                        TextSpan(
                          text: "Already a family?",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: " Sign In",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
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

class Textfield2 extends StatelessWidget {
  const Textfield2({
    super.key,
    required this.name,
    required this.imagepath,
  });

  final String name;
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: Colors.white),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: name,
          border: InputBorder.none, // Remove default border
          suffixIcon: Image.asset(imagepath),
        ),
      ),
    );
  }
}

class Textfield1 extends StatelessWidget {
  const Textfield1({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: name,
          border: InputBorder.none, // Remove the default border
          contentPadding: EdgeInsets.all(10), // Optional padding
        ),
      ),
    );
  }
}

class TextFIeeeee extends StatelessWidget {
  const TextFIeeeee({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 173, // Set the desired width
      height: 50, // Set
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: TextField(
        decoration: InputDecoration(
          hintText: name,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
