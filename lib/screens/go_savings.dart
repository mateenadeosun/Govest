import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_vest_application/screens/go_wallet.dart';

class go_savings extends StatefulWidget {
  const go_savings({super.key});

  @override
  State<go_savings> createState() => _go_savingsState();
}

class _go_savingsState extends State<go_savings> {
  List<String> items1 = [
    "Autosave",
    "Manual",
  ];
  int current1 = 0;
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
                "Create GoSavings",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3B5AFB),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              SizedBox(
                width: 300.sp,
                child: Text(
                  "Create a safelock for 10-30 days with a return close to 6%. The longer the payback date, the higher your return.",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.black),
                ),
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
                    labelText: 'How much to save per time?',
                    prefixIcon: Image.asset(
                        "assets/images/Naira Bl.png"), // Placeholder text
                    labelStyle: TextStyle(
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
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff979797)),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: SizedBox(
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
                                    border:
                                        Border.all(color: Color(0xffE7E7F6)),
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
                                          borderRadius:
                                              BorderRadius.circular(50),
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
              GestureDetector(
                 onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => go_wallet()));
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
                      "GOSAVE NOW",
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
