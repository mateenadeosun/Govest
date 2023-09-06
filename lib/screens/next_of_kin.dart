import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class next_of_kin extends StatefulWidget {
  const next_of_kin({super.key});

  @override
  State<next_of_kin> createState() => _next_of_kinState();
}

class _next_of_kinState extends State<next_of_kin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15.sp, right: 15.sp, top: 40.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff3B5AFB),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add Next of Kin',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff3B5AFB),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40.sp,
                ),
                NextofKinTextField(hint1: 'First Name'),
                SizedBox(
                  height: 20.sp,
                ),
                NextofKinTextField(hint1: 'Surname'),
                SizedBox(
                  height: 20.sp,
                ),
                NextofKinTextField(hint1: 'Phone Number'),
                SizedBox(
                  height: 20.sp,
                ),
                NextofKinTextField(hint1: 'Email Address'),
                SizedBox(
                  height: 70.sp,
                ),
                Center(
                  child: Container(
                    height: 45.sp,
                    width: 320.sp,
                    decoration: BoxDecoration(
                        color: Color(0xff3B5AFB),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        'Add Next of Kin',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFFFFFF)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NextofKinTextField extends StatelessWidget {
  const NextofKinTextField({
    super.key,
    required this.hint1,
  });

  final String hint1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 350,
        child: TextField(
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            isCollapsed: true,
            labelText: hint1,
            labelStyle: TextStyle(
              color: Color(0xff93A4FF),
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
            ),
            filled: true,
            fillColor: Color(0xffFFFFFF),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xff93A4FF), width: 1.3),
            ),
          ),
        ),
      ),
    );
  }
}
