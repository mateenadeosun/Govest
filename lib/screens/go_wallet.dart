import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class go_wallet extends StatefulWidget {
  const go_wallet({super.key});

  @override
  State<go_wallet> createState() => _go_walletState();
}

class _go_walletState extends State<go_wallet> {
  bool _switchFunction = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "Go Wallet",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff3B5AFB)),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                "Tap any of the options below to quick save immeditely",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
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
                    labelText: 'Amount to Save',
                    prefixIcon: Image.asset(
                        "assets/images/Naira Bl.png"), // Placeholder text
                    labelStyle: TextStyle(
                        fontSize: 20.sp,
                        color: Color(0xff979797)), // Color of the label text
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
                height: 50.sp,
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
                height: 50.sp,
              ),
              Text(
                "Select Payment Method",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff979797),
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              Text(
                "Tap any of the options below to quick save immeditely",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 40.sp,
              ),
              Container(
                height: 70.sp,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xff0EB51F),
                ),
                child: Center(
                  child: Text(
                    "Use Go Wallet (N20,000)",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              Container(
                height: 70.sp,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xff3B5AFB),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20.sp,
                      ),
                      Image.asset("assets/images/Mastercard.png"),
                      Text(
                        "Use Card with Paystack",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp),
                      ),
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
