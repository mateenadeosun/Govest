import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class savings_history extends StatefulWidget {
  const savings_history({super.key});

  @override
  State<savings_history> createState() => _savings_historyState();
}

class _savings_historyState extends State<savings_history> {
  bool _switchFunction = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 325.sp,
              decoration: BoxDecoration(color: Color(0xff3B5AFB)),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.close,
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 70.sp,
                        ),
                        Text(
                          "Overview",
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      "Your Target Savings",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Big White Naira.png"),
                        SizedBox(
                          width: 2.sp,
                        ),
                        Text(
                          "50,000",
                          style: TextStyle(
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        Text(
                          "/",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        Text(
                          "300,000",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.sp,
                    ),
                    Container(
                      height: 15.sp,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Container(
                            height: 15.sp,
                            width: 66.sp,
                            decoration: BoxDecoration(
                                color: Color(0xff0EB51F),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "42 days Left",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.sp,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 40.sp,
                          height: 20.sp,
                          decoration: BoxDecoration(
                            color: Color(0xff3B5AFB),
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
                          width: 40.sp,
                        ),
                        Text(
                          "Auto Save On",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.sp),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xff3B5AFB),
                    ),
                    child: Center(
                      child: Text(
                        "Save Now",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Savings History",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff979797)),
                      ),
                      Text(
                        "See more",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff979797)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  HistoryWidget(),
                  SizedBox(
                    height: 10.sp,
                  ),
                  HistoryWidget(),
                  SizedBox(
                    height: 10.sp,
                  ),
                  HistoryWidget(),
                  SizedBox(
                    height: 10.sp,
                  ),
                  HistoryWidget(),
                  SizedBox(
                    height: 10.sp,
                  ),
                  HistoryWidget(),
                  SizedBox(
                    height: 10.sp,
                  ),
                  HistoryWidget(),
                  SizedBox(
                    height: 10.sp,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 45.sp,
              width: 45.sp,
              decoration: BoxDecoration(
                  color: Color(0xff0EB51F),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Image.asset("assets/images/Black Down Trend.png"),
            ),
            SizedBox(
              width: 20.sp,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Save from wallet",
                  style: TextStyle(
                    color: Color(0xff3B5AFB),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "12-Dec-2021",
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff979797)),
                )
              ],
            ),
          ],
        ),
        Text(
          "#50,000.00",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: Color(0xff0EB51F),
          ),
        )
      ],
    );
  }
}
