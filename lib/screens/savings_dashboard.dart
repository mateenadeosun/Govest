import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_vest_application/screens/savings_transactions.dart';

class savings_dashboard extends StatefulWidget {
  const savings_dashboard({super.key});

  @override
  State<savings_dashboard> createState() => _savings_dashboardState();
}

class _savings_dashboardState extends State<savings_dashboard> {
  @override
  Widget build(BuildContext context) {
    String Gotype = "Go Bank";
    String Amount = "# 40,000";
    String Interest = "6%p.a";
    // String Colorpath = "Color(0xff0EB51F)";

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration:
                  BoxDecoration(color: Color(0xff60f248).withOpacity(0.23)),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30.sp,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Go",
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor: Color(0xff0EB51F),
                                        decorationThickness: 0.5.sp,
                                        color: Color(0xff0EB51F),
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Savings",
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationColor: Color(0xff2A52E2),
                                          decorationThickness: 0.5.sp,
                                          color: Color(0xff2A52E2)),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Take a bold step to get hgher return",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff979797)),
                              )
                            ],
                          ),
                          Image.asset("assets/images/Plus B.png"),
                        ],
                      ),
                      SizedBox(
                        height: 30.sp,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/Big Naira.png"),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Text(
                            "590,000.00",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.black,
                              decorationThickness: 1.sp,
                              fontSize: 40.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      // SizedBox(height: 40.sp,),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 30.sp, right: 30.sp, top: 30.sp, bottom: 10.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dashboard",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff3B5AFB),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        savings_transactions()));
                              },
                              child: Text(
                                "Transactions",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff979797),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 30.sp,
                          right: 30.sp,
                        ),
                        child: Container(
                          height: 1.sp,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color(0xff979797),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.sp,
                ),
                SavingsDashboardContainer1(
                    Gotype: Gotype, Amount: Amount, Interest: Interest),
                SizedBox(
                  width: 20.sp,
                ),
                SavingsDashboardContainer2(
                    Gotype: "Go Wallet", Amount: Amount, Interest: Interest),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.sp,
                ),
                SavingsDashboardContainer2(
                    Gotype: "Go Lock", Amount: Amount, Interest: Interest),
                SavingsDashboardContainer1(
                    Gotype: "Go Target", Amount: Amount, Interest: Interest),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SavingsDashboardContainer2 extends StatelessWidget {
  const SavingsDashboardContainer2({
    super.key,
    required this.Gotype,
    required this.Amount,
    required this.Interest,
  });

  final String Gotype;
  final String Amount;
  final String Interest;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 20.sp,
        top: 20.sp,
      ),
      child: Container(
        height: 172.sp,
        width: 147.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Color(0xff3B5AFB),
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
                Gotype,
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
              Text(
                Amount,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    Interest,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SavingsDashboardContainer1 extends StatelessWidget {
  const SavingsDashboardContainer1({
    super.key,
    required this.Gotype,
    required this.Amount,
    required this.Interest,
  });

  final String Gotype;
  final String Amount;
  final String Interest;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        // left: 20.sp,
        // right: 20.sp,
        top: 20.sp,
      ),
      child: Container(
        height: 172.sp,
        width: 147.sp,
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
                Gotype,
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
              Text(
                Amount,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    Interest,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
