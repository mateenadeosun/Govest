import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_vest_application/screens/edit_profile.dart';

class change_password extends StatefulWidget {
  const change_password({super.key});

  @override
  State<change_password> createState() => _change_passwordState();
}

class _change_passwordState extends State<change_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color(0xff3B5AFB)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.chevron_left,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Center(
                    child: Text(
                  "Change Password",
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
                SizedBox(
                  height: 10.sp,
                ),
                Center(
                  child: SizedBox(
                    width: 300.sp,
                    child: Text(
                      "Your new password must be different from your old password.",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Container(
                  height: 50.sp,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.white),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Current Password",
                        hintStyle: TextStyle(color: Color(0xff979797)),
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.visibility_off,
                            size: 20, color: Color(0xff3B5AFB))),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                EditTextfield(name: "Enter New Password"),
                SizedBox(
                  height: 20.sp,
                ),
                EditTextfield(name: "Confirm New Password"),
                SizedBox(
                  height: 90.sp,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 42.sp,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "Change Password",
                      style:
                          TextStyle(fontSize: 14.sp, color: Color(0xff3B5AFB)),
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
