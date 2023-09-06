import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class preview_savings extends StatefulWidget {
  const preview_savings({super.key});

  @override
  State<preview_savings> createState() => _preview_savingsState();
}

class _preview_savingsState extends State<preview_savings> {
  bool _switchValue = false;
  bool _switchFunction = false;
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
              Image.asset("assets/images/Cancel Botton.png"),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "Finish settig up",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3B5AFB),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "Finalize your target savings settings",
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Container(
                height: 71.sp,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xff0EB51F),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/Wallet w.png"),
                      SizedBox(
                        width: 20.sp,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total target of N50,000",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 250,
                            child: Text(
                              "Create a safelock for 10-30 days with a return close to 6%.",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.sp,
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
                    labelText: 'Preferred Amont to save on a manual basis',
                    prefixIcon: Image.asset("assets/images/Naira Bl.png"),
                    labelStyle: TextStyle(color: Color(0xff979797)),
                    border: InputBorder.none, // Hide the default border
                  ),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 156.sp,
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
                        labelText: 'Start Date',
                        suffixIcon: Icon(
                          Icons.calendar_today,
                          size: 16,
                          color: Color(0xff979797),
                        ),
                        labelStyle: TextStyle(color: Color(0xff979797)),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    width: 156.sp,
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
                        labelText: 'Withdrawal Date',
                        suffixIcon: Icon(
                          Icons.calendar_today,
                          size: 16,
                          color: Color(0xff979797),
                        ),
                        labelStyle: TextStyle(color: Color(0xff979797)),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
               RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10.sp,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Your target savings will end in",
                                    style: TextStyle(                                      
                                      color: Color(0xff979797),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "120 days",
                                    style: TextStyle(                                     
                                        color: Color(0xff2A52E2)),
                                  ),
                                  TextSpan(
                                    text: "with",
                                    style: TextStyle(                                      
                                      color: Color(0xff979797),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "12%",
                                    style: TextStyle(                                      
                                      color: Color(0xff0EB51F),
                                    ),
                                  ),
                                   TextSpan(
                                    text: "return rate",
                                    style: TextStyle(                                      
                                      color: Color(0xff979797),
                                    ),
                                  ),
                                ],
                              ),
                              
                            ),
              SizedBox(
                height: 20.sp,
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
                    labelText: 'Select source of fund',
                    suffixIcon: Icon(
                      Icons.expand_more,
                      size: 38,
                      color: Color(0xff979797),
                    ),
                    labelStyle: TextStyle(color: Color(0xff979797)),
                    border: InputBorder.none, // Hide the default border
                  ),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40.sp,
                    height: 20.sp,
                    decoration: BoxDecoration(
                      color: Color(0xff3B5AFB),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Switch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 260.sp,
                    child: Text(
                      "I authorize GoVEST to safelock NGN500,000 immediately and return it in full on Wednesday 11th of October 2021 by 12:23PM to my bank account with 2355643. I confirm and approve this transaction.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40.sp,
                    height: 20.sp,
                    decoration: BoxDecoration(
                      color: Color(0xff979797),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Switch(
                      value: _switchFunction,
                      onChanged: (value) {
                        setState(() {
                          _switchFunction = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 260.sp,
                    child: Text(
                      "I hereby acknowledge this SafeLock CANNOT be broken once it has been created.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xff3B5AFB),
                ),
                child: Center(
                  child: Text(
                    "CREATE GO TARGET",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
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
