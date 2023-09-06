import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_vest_application/screens/cashew_nut_screen.dart';

class cashewnut_investment_screen extends StatefulWidget {
  const cashewnut_investment_screen({super.key});

  @override
  State<cashewnut_investment_screen> createState() =>
      _cashewnut_investment_screenState();
}

class _cashewnut_investment_screenState
    extends State<cashewnut_investment_screen> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 140.sp,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          // Content of the bottom sheet
          child: Padding(
            padding: const EdgeInsets.all(17),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  title: Container(
                    height: 47.sp,
                    decoration: BoxDecoration(
                        border: Border.all(
                      width: 1.sp,
                      color: Color(0xff3B5AFB),
                    )),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 10.sp,),
                          Container(
                            height: 40.sp,
                            width: 40.sp,
                            decoration: BoxDecoration(
                              // color: Color(0xff0298A7),
                              // borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                  image: Image(
                                          image: AssetImage(
                                              'assets/images/Card.png'))
                                      .image),
                            ),
                          ),
                          SizedBox(width: 10.sp,),
                          Text(
                            "Paystack with Card",
                            style: TextStyle(
                                color: Color(0xff3B5AFB),
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    // Handle option 1
                    // Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Container(
                    height: 47.sp,
                    decoration: BoxDecoration(
                        border: Border.all(
                      width: 1.sp,
                      color: Color(0xff0EB51F),
                    )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20.0, left: 10.sp),
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Image.asset("assets/images/Wallet.png"),
                        SizedBox(width: 10.sp,),
                        Text(
                          "Wallet - NGN 200,000",
                          style: TextStyle(
                              color: Color(0xff0EB51F),
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    // Handle option 2
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            cashew_nut_screen()));
                  },
                  child: Image.asset("assets/images/Cancel Botton.png")),
              SizedBox(
                height: 30.sp,
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
                    width: 30.sp,
                  ),
                  Text(
                    "Cashew Nut Investment",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff3B5AFB)),
                  )
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 165.sp,
                decoration: BoxDecoration(
                    color: Color(0xff3B5AFB),
                    borderRadius: BorderRadius.circular(7)),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.sp,
                      ),
                      Text(
                        "This investment is insured by Leadway Assurance and offer is valid through November 22nd.",
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 1.sp,
                        decoration: BoxDecoration(
                          color: Color(0xff979797),
                        ),
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Text(
                        "Note: Kindly add your payout bank and KYC details to have your money at due time",
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "How many Units",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff979797),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "5",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1.sp,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              Row(
                children: [
                  Image.asset("assets/images/Mark.png"),
                  SizedBox(
                    width: 20.sp,
                  ),
                  Text(
                    "Number of units you wish to buy",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),
              Container(
                height: 1.sp,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xff979797),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Investment",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff979797),
                    ),
                  ),
                  Text(
                    "Total Investment + Return",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff979797),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "N 500,000.00",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Text(
                    "N 650,000.00",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Container(
                height: 1.sp,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xff979797),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                "Select source of fund",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff979797),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Wallet - NGN 200,000",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Image.asset("assets/images/Down Arrow.png")
                ],
              ),
              SizedBox(
                height: 20.sp,
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
              GestureDetector(
                onTap: () {
                  _showBottomSheet(context);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.sp,
                  decoration: BoxDecoration(
                    color: Color(0xff3B5AFB),
                  ),
                  child: Center(
                    child: Text(
                      "BUY INVESTMENT",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          color: Colors.white),
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
