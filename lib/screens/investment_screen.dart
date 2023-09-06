import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_vest_application/screens/cashew_nut_screen.dart';

class investment_screen extends StatefulWidget {
  const investment_screen({super.key});

  @override
  State<investment_screen> createState() => _investment_screenState();
}

class _investment_screenState extends State<investment_screen> {
  List<String> items = [
    "RealVest",
    "AgroVest",
    "ManuVest",
    "HalalVest",
  ];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30.sp,
                      ),
                      children: [
                        TextSpan(
                          text: "VEST",
                          style: TextStyle(
                            color: Color(0xff0EB51F),
                          ),
                        ),
                        TextSpan(
                          text: "ING",
                          style: TextStyle(color: Color(0xff2A52E2)),
                        ),
                      ],
                    ),
                  ),
                  Image.asset("assets/images/Vesting.png"),
                ],
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                "Take a bold step to get hgher return",
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff979797)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/Naira B.png"),
                      Text(
                        "590,000.00",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff3B5AFB),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("assets/images/Naira B.png"),
                      Text(
                        "690,000.00",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff3B5AFB),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Input",
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff979797),
                    ),
                  ),
                  Text(
                    "Total Output",
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff979797),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Container(
                height: 120.sp,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xff2A52E2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100.sp,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "We need to know you better",
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "PROCEED",
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffDDDC24),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset("assets/images/Proceed.png"),
                    ],
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
                    width: 280.sp,
                    height: 50.sp,
                    decoration: BoxDecoration(
                      color: Color(0xff979797).withOpacity(0.12),
                      borderRadius: BorderRadius.circular(7.0),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for investments',
                          border: InputBorder.none, // Remove default border
                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Image.asset("assets/images/Investment Icon.png")
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                current = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 100),
                              margin: EdgeInsets.all(5),
                              width: MediaQuery.of(context).size.width / 4,
                              height: MediaQuery.of(context).size.height / 17,
                              decoration: BoxDecoration(
                                color: current == index
                                    ? Color(0xff2A52E2)
                                    : Colors.white.withOpacity(0.12),
                                border: Border.all(color: Color(0xffE7E7F6)),
                                borderRadius: current == index
                                    ? BorderRadius.circular(50)
                                    : BorderRadius.circular(0),
                              ),
                              child: Center(
                                child: Text(
                                  items[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: current == index
                                          ? Colors.white
                                          : Color(0xff2A52E2)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              cashew_nut_screen()));
                    },
                    child: Container(
                      height: 269.sp,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/Maize.png"),
                          Container(
                            //
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(7.r),
                                  bottomRight: Radius.circular(7.r),
                                ),
                                color: Color(0xff2A52E2)),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 125.sp,
                                    child: Text(
                                      "Cashew Nut Investment",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "13%",
                                          style: TextStyle(
                                              color: Color(0xffDDDC24)),
                                        ),
                                        TextSpan(
                                          text: " returns in 3 months",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.sp,
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                              "assets/images/Naira.png"),
                                          SizedBox(
                                            width: 2.sp,
                                          ),
                                          Text(
                                            "50,000",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 70.sp,
                                      ),
                                      Text(
                                        "120",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Per unit",
                                        style: TextStyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 65.sp,
                                      ),
                                      Text(
                                        "Available Unit",
                                        style: TextStyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 269.sp,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/Poultry.png"),
                        Container(
                          //
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(7.r),
                                bottomRight: Radius.circular(7.r),
                              ),
                              color: Color(0xff2A52E2)),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 125.sp,
                                  child: Text(
                                    "Poultry Farm Investment",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.sp,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10.sp,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "13%",
                                        style:
                                            TextStyle(color: Color(0xffDDDC24)),
                                      ),
                                      TextSpan(
                                        text: " returns in 3 months",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 30.sp,
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset("assets/images/Naira.png"),
                                        SizedBox(
                                          width: 2.sp,
                                        ),
                                        Text(
                                          "10,000",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 70.sp,
                                    ),
                                    Text(
                                      "300",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.sp,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Per unit",
                                      style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 65.sp,
                                    ),
                                    Text(
                                      "Available Unit",
                                      style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
