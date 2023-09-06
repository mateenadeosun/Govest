import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_vest_application/screens/investment_package_scree..dart';
import 'package:go_vest_application/screens/signup_screen.dart';

class sign_in extends StatefulWidget {
  const sign_in({super.key});

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3B5AFB),
      body: Padding(
        padding: const EdgeInsets.all(20),
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
                        builder: (BuildContext context) => signup_screen()));
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
                  Text("Welcome back,",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500
              
                  ),),
                  Text("Login to your Account",
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),),
                  SizedBox(height: 20.sp,),
                  Textfield1(name: "Email adress"),
                  SizedBox(height: 20.sp,),
                  Textfield2(name: "Password", imagepath: "assets/images/Password.png"),
                  SizedBox(height: 5.sp,),
                  Text("Forgot Password?",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),),
                  SizedBox(
                    height: 200.sp,
                  ),
                  GestureDetector(
                    onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => investment_package_screen()));
                  },
                    child: Container(
                      height: 55.sp,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                  
                      ),
                      child: Center(
                        child: Text("SIGN ME IN",
                        style: TextStyle(
                          fontSize:14 ,
                          fontWeight:FontWeight.w700 ,
                        ),),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.sp,),
                  GestureDetector(
                    onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => signup_screen()));
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
                                  text: "New to GoVest?",
                                  style: TextStyle(color: Colors.white),
                                ),
                                TextSpan(
                                  text: " Sign Up",
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
