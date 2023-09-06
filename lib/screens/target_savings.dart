import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_vest_application/screens/preview_savings.dart';

class target_savings extends StatefulWidget {
  const target_savings({super.key});

  @override
  State<target_savings> createState() => _target_savingsState();
}

class _target_savingsState extends State<target_savings> {
  List<String> items = [
    "Daily",
    "Weekly",
    "Montly",
  ];
  int current = 0;
  List<String> items1 = [
    "Autosave",
    "Manual",
  ];
  int current1 = 0;
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
                "Create GoTarget Savings",
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
                "How much ?",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff979797),
                ),
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
                    labelText: 'Enter Amount',
                    prefixIcon: Image.asset(
                        "assets/images/Naira Bl.png"), // Placeholder text
                    labelStyle: TextStyle(
                        color: Colors.black), // Color of the label text
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
                height: 30.sp,
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
                    labelText: 'Set Title for your Target',
                    labelStyle: TextStyle(color: Color(0xff979797)),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "How do you want to safe?",
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff979797)),
              ),
              Center(
                child: SizedBox(
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
                                width: 100.sp,
                                height: 50.sp,
                                decoration: BoxDecoration(
                                    color: current == index
                                        ? Color(0xff2A52E2)
                                        : Colors.white.withOpacity(0.12),
                                    border:
                                        Border.all(color: Color(0xffE7E7F6)),
                                    borderRadius: BorderRadius.circular(5)),
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
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                'How do you want to safe?',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff979797),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: items1.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                current1 = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 100),
                              margin: EdgeInsets.all(5),
                              width: 100.sp,
                              height: 50.sp,
                              decoration: BoxDecoration(
                                  color: current1 == index
                                      ? Color(0xff2A52E2)
                                      : Colors.white.withOpacity(0.12),
                                  border: Border.all(color: Color(0xffE7E7F6)),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10.sp,
                                    ),
                                    Container(
                                      height: 20.sp,
                                      width: 20.sp,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: current1 == index
                                            ? Colors.white
                                            : Color(0xff2A52E2),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.sp,
                                    ),
                                    Text(
                                      items1[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: current1 == index
                                              ? Colors.white
                                              : Color(0xff2A52E2)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              SizedBox(
                height: 80.sp,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => preview_savings()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xff3B5AFB),
                  ),
                  child: Center(
                    child: Text(
                      "CONTINUE",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
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
