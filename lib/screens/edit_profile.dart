import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_vest_application/screens/signup_screen.dart';

class edit_profile extends StatefulWidget {
  const edit_profile({super.key});

  @override
  State<edit_profile> createState() => _edit_profileState();
}

class _edit_profileState extends State<edit_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color(0xff3B5AFB)),
          child: Padding(
            padding: EdgeInsets.all(20),
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
                Center(child: Image.asset("assets/images/Profile P.png")),
                SizedBox(
                  height: 10.sp,
                ),
                Center(
                  child: Text(
                    "Ganni West",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
                Center(
                  child: Container(
                    height: 25.sp,
                    width: 110.sp,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Change avatar",
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff3B5AFB),
                            ),
                          ),
                          Icon(
                            Icons
                                .edit, // Use the edit icon from the Icons class
                            size: 15.sp, // Icon size
                            color: Color(0xff3B5AFB), // Icon color
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.sp,
                ),
                EditTextfield(name: "Email"),
                SizedBox(
                  height: 15.sp,
                ),
                EditTextfield(name: "Username"),
                SizedBox(
                  height: 15.sp,
                ),
                EditTextfield(name: "Phone Number"),
                SizedBox(
                  height: 15.sp,
                ),
                EditTextfield(name: "Date of Birth"),
                SizedBox(
                  height: 70.sp,
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
                      "Save Changes",
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

class EditTextfield extends StatelessWidget {
  const EditTextfield({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.sp,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: name,
          hintStyle: TextStyle(color: Color(0xff979797)),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
