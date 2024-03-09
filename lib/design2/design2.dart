import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Design2 extends StatefulWidget{
  static String routeName = "Design2";
  Design2({super.key});

  @override
  State<Design2> createState() => _Design2State();
}

class _Design2State extends State<Design2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 35,
                    child: Image.asset("Assets/design2Assets/jade_person.png"),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text("Hello,Jade",
                        style: GoogleFonts.getFont("Inter", fontSize: 18),),
                      SizedBox(height: 10,),
                      Text(
                        "Ready to workout?",
                        style: GoogleFonts.getFont("Inter", fontSize: 20,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                        "Assets/design1Assets/notification_bell.png"),
                  ),
                ],
              ),
              Row(
                children: [
                  buildStatContainer(),
                ],
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Text("Workout Programs", style: GoogleFonts.getFont(
                      "Inter", fontWeight: FontWeight.w700, fontSize: 20),)
                ],
              ),
              SizedBox(height: 16,),
              buildTabBar(),
              SizedBox(height: 24,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffE4E7EC)
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            width : 80,
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              color: Color(0xffFCFCFD),
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Text("7 Days" , style: GoogleFonts.getFont("Inter" , fontSize: 15 , fontWeight: FontWeight.normal),),
                          ),
                          SizedBox(height: 14,),
                          Text("Morning Yoga", style: GoogleFonts.getFont(
                              "Inter",
                              fontSize: 18,
                              fontWeight: FontWeight.w700),),
                          SizedBox(height: 12,),
                          Text("Improve mental focus.",
                              style: GoogleFonts.getFont(
                                  "Inter", color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal)),
                          SizedBox(height: 18,),
                          Row(
                            children: [
                              Image.asset("Assets/design2Assets/clock.png"),
                              SizedBox(width: 10,),
                              Text("30 Mins", style: GoogleFonts.getFont(
                                  "Inter", fontSize: 16,
                                  fontWeight: FontWeight.w300),)
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Image.asset("Assets/design2Assets/yoga.png")),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffE4E7EC)
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            width : 80,
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                                color: Color(0xffFCFCFD),
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Text("7 Days" , style: GoogleFonts.getFont("Inter" , fontSize: 15 , fontWeight: FontWeight.normal),),
                          ),
                          SizedBox(height: 14,),
                          Text("Plank Exercise", style: GoogleFonts.getFont(
                              "Inter",
                              fontSize: 18,
                              fontWeight: FontWeight.w700),),
                          SizedBox(height: 12,),
                          Text("Improve posture and stability.",
                              style: GoogleFonts.getFont(
                                  "Inter", color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal)),
                          SizedBox(height: 18,),
                          Row(
                            children: [
                              Image.asset("Assets/design2Assets/clock.png"),
                              SizedBox(width: 10,),
                              Text("30 Mins", style: GoogleFonts.getFont(
                                  "Inter", fontSize: 16,
                                  fontWeight: FontWeight.w300),)
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Image.asset("Assets/design2Assets/blank.png")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: Color(0xff363F72),
        showSelectedLabels: false,
        showUnselectedLabels: false,

        items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("Assets/design1Assets/home_navigation.png" )), label: "Home"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("Assets/design2Assets/arrow_navigation.png"),color: Color(0xff667085)),label: "Home"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("Assets/design2Assets/bar_navigation.png"),color: Color(0xff667085)),label: "Home"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("Assets/design1Assets/user_navigation.png"),color: Color(0xff667085)),label: "Home"),
        ],
      ),
    );
  }

  Widget buildStatContainer() =>
      Container(
        width: 310,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(0xffECEDF1FF),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 3),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("Assets/design2Assets/heart.png"),
                      SizedBox(width: 5,),
                      Text("Heart Rate", style: GoogleFonts.getFont(
                          "Inter", fontSize: 14,
                          fontWeight: FontWeight.normal),)
                    ],
                  ),
                  SizedBox(height: 6,),
                  Row(
                    children: [
                      Text("81 BPM", style: GoogleFonts.getFont(
                          "Inter", fontSize: 20, fontWeight: FontWeight.w700),)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xffD9D9D9),
              width: 5,
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 3),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("Assets/design2Assets/list.png"),
                      SizedBox(width: 5,),
                      Text("TO-Do", style: GoogleFonts.getFont(
                          "Inter", fontSize: 14,
                          fontWeight: FontWeight.normal),)
                    ],
                  ),
                  SizedBox(height: 6,),
                  Row(
                    children: [
                      Text("32,5%", style: GoogleFonts.getFont(
                          "Inter", fontSize: 20, fontWeight: FontWeight.w700),)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xffD9D9D9),
              width: 5,
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 3),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("Assets/design2Assets/calo.png"),
                      SizedBox(width: 5,),
                      Text("Calo", style: GoogleFonts.getFont(
                          "Inter", fontSize: 14,
                          fontWeight: FontWeight.normal),)
                    ],
                  ),
                  SizedBox(height: 6,),
                  Row(
                    children: [
                      Text("1000 Cal", style: GoogleFonts.getFont(
                          "Inter", fontSize: 20, fontWeight: FontWeight.w700),)
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      );

  Widget buildTabBar() =>
      DefaultTabController(
          length: 4,
          child: TabBar(
            labelColor: Color(0xff363F72),
            indicatorColor: Color(0xff363F72),
            labelStyle: GoogleFonts.getFont("Inter", fontSize: 16),
            unselectedLabelColor: Color(0xff667085),
            tabs: [
              Tab(text: "All Type "),
              Tab(text: "Full Body",),
              Tab(text: "Uper",),
              Tab(text: "Lower",)
            ],
          )
      );
}
