import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;

class Design3 extends StatelessWidget{
  static String routeName = "Design3";
  const Design3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("Assets/design3Assets/alice_care_logo.png"),
            SizedBox(width: 5,),
            Text("AliceCare" , style: GoogleFonts.getFont("Milonga" , fontSize: 26 , fontWeight: FontWeight.normal , color: Colors.black),),
          ],
        ),
      ),
      backgroundColor: Color(0xffE4E7EC),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24 , horizontal: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    prefixIcon: ImageIcon(AssetImage("Assets/design3Assets/search.png")),
                    label: Text("Articles, Video, Audio and More,..." , style: GoogleFonts.getFont("Inter" , fontSize: 14 , color: Color(0xff667085)),)
                  ),
                ),
                SizedBox(height: 24,),
                Row(children: [
                  Expanded(child: buildBadge(color: Color(0xffdcd7e8), text: "Discover",textColor: Color(0xff6941C6) )),
                  SizedBox(width: 10,),
                  Expanded(child: buildBadge(color:Color(0xffE4E7EC),text: "News" , textColor: Color(0xff667085) )),
                  SizedBox(width: 10,),
                  Expanded(child: buildBadge(color:Color(0xffE4E7EC),text: "Most Important" , textColor: Color(0xff667085) )),
                  SizedBox(width: 10,),
                  Expanded(child: buildBadge(color:Color(0xffE4E7EC),text: "Saved" , textColor: Color(0xff667085) )),
                ]),

                SizedBox(height: 40,),
                buildRowWithSeeAll("Hot Topics"),
                SizedBox(height: 18,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset("Assets/design3Assets/self_care.png"),
                      SizedBox(width: 10,),
                      Image.asset("Assets/design3Assets/cycle.png")
                    ],
                  ),
                ),
                SizedBox(height: 26,),
                Row(
                  children: [
                    Text("Get Tips" , style: GoogleFonts.getFont("Inter" , fontWeight: FontWeight.w700 , fontSize: 20),),
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    Expanded(child: Image.asset("Assets/design3Assets/Container.png"))
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    Expanded(child: buildRowWithSeeAll("Cycle Phases and Period")),
                  ],
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        backgroundColor: Colors.white,
        elevation: 0,
        selectedItemColor: Color(0xff6941C6),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("Assets/design3Assets/calendar.png"),size: 35,), label: "Today"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("Assets/design3Assets/insights.png"),size: 35),label: "Insights"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("Assets/design3Assets/chat.png"),size: 35),label: "Chat"),
        ],
      ),
    );
  }
  Widget buildRowWithSeeAll(String text){
    return Row(
      children: [
        Expanded(flex: 8,child: Text(text , style: GoogleFonts.getFont("Inter" , fontWeight: FontWeight.w700 , fontSize: 20),)),
        Expanded(flex: 2,child: InkWell(onTap: (){} ,child: Image(image: AssetImage("Assets/design3Assets/SeeAll.png"),),))
      ],
    );
  }

  Widget buildBadge({ required String text , required Color textColor,required Color color}) =>badges.Badge(
  // position: position,
  ignorePointer: true,
  badgeStyle: badges.BadgeStyle(
  shape: badges.BadgeShape.square,
  badgeColor: color,
  borderRadius: BorderRadius.circular(20),
  padding: EdgeInsets.all(15),
  ),
  badgeContent: Text(text , style: GoogleFonts.getFont("Inter" , fontSize: 16 , color: textColor)),
  child: Container(
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  color: Color(0xffD6BBFB)
  ),
  ),
  );
}
