import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Design1 extends StatefulWidget{
  static String routeName = "Design1";
   Design1({super.key});

  @override
  State<Design1> createState() => _Design1State();
}

class _Design1State extends State<Design1> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  List<Widget> pages = [
    Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Color(0xffECFDF3)
    ),
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: [
              Text("Positive Vibes", style: GoogleFonts.getFont("Inter" , color: Color(0xff344054) , fontSize: 18 , fontWeight: FontWeight.w700),),
              SizedBox(height: 12,),
              Text("Boost your mood with positive vibes",style: GoogleFonts.getFont("Inter" , color: Colors.black , fontSize: 18 , fontWeight: FontWeight.normal)),
              SizedBox(height: 18,),
              Row(
                children: [
                  Image.asset("Assets/design1Assets/green_play_button.png"),
                  SizedBox(width: 10,),
                  Text("10 mins" , style: GoogleFonts.getFont("Inter" , fontSize: 16 , fontWeight: FontWeight.w300),)
                ],
              )
            ],
          ),
        ),
        Expanded(child: Image.asset("Assets/design1Assets/HumanWithDog.png")),
      ],
    ),
  ),
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Color(0xffECFDF3)
      ),
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                Text("Positive Vibes", style: GoogleFonts.getFont("Inter" , color: Color(0xff344054) , fontSize: 18 , fontWeight: FontWeight.w700),),
                SizedBox(height: 12,),
                Text("Boost your mood with positive vibes",style: GoogleFonts.getFont("Inter" , color: Colors.black , fontSize: 18 , fontWeight: FontWeight.normal)),
                SizedBox(height: 18,),
                Row(
                  children: [
                    Image.asset("Assets/design1Assets/green_play_button.png"),
                    SizedBox(width: 10,),
                    Text("10 mins" , style: GoogleFonts.getFont("Inter" , fontSize: 16 , fontWeight: FontWeight.w300),)
                  ],
                )
              ],
            ),
          ),
          Expanded(child: Image.asset("Assets/design1Assets/HumanWithDog.png")),
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Color(0xffECFDF3)
      ),
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                Text("Positive Vibes", style: GoogleFonts.getFont("Inter" , color: Color(0xff344054) , fontSize: 18 , fontWeight: FontWeight.w700),),
                SizedBox(height: 12,),
                Text("Boost your mood with positive vibes",style: GoogleFonts.getFont("Inter" , color: Colors.black , fontSize: 18 , fontWeight: FontWeight.normal)),
                SizedBox(height: 18,),
                Row(
                  children: [
                    Image.asset("Assets/design1Assets/green_play_button.png"),
                    SizedBox(width: 10,),
                    Text("10 mins" , style: GoogleFonts.getFont("Inter" , fontSize: 16 , fontWeight: FontWeight.w300),)
                  ],
                )
              ],
            ),
          ),
          Expanded(child: Image.asset("Assets/design1Assets/HumanWithDog.png")),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: InkWell(
            onTap: (){},
            child: Image(
              image: AssetImage("Assets/design1Assets/AppBarLogo.png"),
            ),
          ),
          backgroundColor: Colors.transparent,
          title: Text("Moody", style: GoogleFonts.getFont("Inter" , color: Colors.black),),
          actions: [InkWell(onTap: (){},child: Image(image: AssetImage("Assets/design1Assets/notification_bell.png")))],
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Hello, Sara Rose" , style: TextStyle(
                    color: Color(0xff371B34),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("How are you felling today " , style: TextStyle(
                    color: Color(0xff371B34),
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(child: buildImageWithText("Love", "Assets/design1Assets/love_emoji.png") ),
                  Expanded(child:  buildImageWithText("Coll", "Assets/design1Assets/cool_emoji.png")),
                  Expanded(child:  buildImageWithText("Happy", "Assets/design1Assets/happy_emoji.png")),
                  Expanded(child:  buildImageWithText("Sad", "Assets/design1Assets/sad_emoji.png")),
                ],
              ),
              SizedBox(height: 50,),
              buildRowWithSeeMore("Feature"),
              SizedBox(height: 12),
              // buildContainer(),
              SizedBox(
                height: 250,
                child: PageView.builder(
                  controller: controller,
                  // itemCount: pages.length,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
              Center(
                child : SmoothPageIndicator(
                    controller: controller,  // PageController
                    count:  3,
                    effect:  WormEffect(
                      dotColor: Color(0xffD9D9D9),
                      dotWidth: 6,
                      dotHeight: 6,
                      activeDotColor: Color(0xff98A2B3)
                    ),  // your preferred effect
                    onDotClicked: (index){

                    }
                )
              ),
              SizedBox(height: 40,),
              buildRowWithSeeMore("Exercise"),
              SizedBox(height: 20,),
              Row(children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffF9F5FF),
                    ),
                    child: Row(
                      children: [
                        Image.asset("Assets/design1Assets/relaxation.png"),
                        SizedBox(width: 5,),
                        Text("Relaxation" , style: GoogleFonts.getFont("Inter" , fontWeight: FontWeight.normal , fontSize: 16),)
                      ],
                    )
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){},
                  child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFDF2FA),
                      ),
                      child: Row(
                        children: [
                          Image.asset("Assets/design1Assets/meditation.png"),
                          SizedBox(width: 5,),
                          Text("Meditation" , style: GoogleFonts.getFont("Inter" , fontWeight: FontWeight.normal , fontSize: 16),)
                        ],
                      )
                  ),
                ),
              ]),
              SizedBox(height: 12,),
              Row(children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFFFAF5),
                      ),
                      child: Row(
                        children: [
                          Image.asset("Assets/design1Assets/breathing.png"),
                          SizedBox(width: 5,),
                          Text("Breathing" , style: GoogleFonts.getFont("Inter" , fontWeight: FontWeight.normal , fontSize: 16),)
                        ],
                      )
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){},
                  child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF0F9FF),
                      ),
                      child: Row(
                        children: [
                          Image.asset("Assets/design1Assets/yoga.png"),
                          SizedBox(width: 5,),
                          Text("Yoga" , style: GoogleFonts.getFont("Inter" , fontWeight: FontWeight.normal , fontSize: 16),)
                        ],
                      )
                  ),
                ),
              ]),



            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: Color(0xff027A48),
        showSelectedLabels: false,
        showUnselectedLabels: false,

        items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("Assets/design1Assets/home_navigation.png" )), label: "Home"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("Assets/design1Assets/gide_navigation.png"),color: Color(0xff667085)),label: "Home"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("Assets/design1Assets/calender_navigation.png"),color: Color(0xff667085)),label: "Home"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("Assets/design1Assets/user_navigation.png"),color: Color(0xff667085)),label: "Home"),
        ],
      ),
    );
  }

  Widget buildImageWithText(String text , String image){
    return InkWell(
      onTap: (){} ,
      child: Column(
        children: [
          Image.asset(image),
          Text(text , style : GoogleFonts.getFont("Inter" , fontSize: 14))
        ],
      ),
    );
  }

  Widget buildRowWithSeeMore(String text){
    return Row(
      children: [
        Expanded(flex: 7,child: Text(text , style: GoogleFonts.getFont("Inter" , fontWeight: FontWeight.w700 , fontSize: 20),)),
        Expanded(flex: 3,child: InkWell(onTap: (){} ,child: Image(image: AssetImage("Assets/design1Assets/seeMore.png"),),))
      ],
    );
  }

  Widget buildContainer(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Color(0xffECFDF3)
      ),
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                Text("Positive Vibes", style: GoogleFonts.getFont("Inter" , color: Color(0xff344054) , fontSize: 18 , fontWeight: FontWeight.w700),),
                SizedBox(height: 12,),
                Text("Boost your mood with positive vibes",style: GoogleFonts.getFont("Inter" , color: Colors.black , fontSize: 18 , fontWeight: FontWeight.normal)),
                SizedBox(height: 18,),
                Row(
                  children: [
                    Image.asset("Assets/design1Assets/green_play_button.png"),
                    SizedBox(width: 10,),
                    Text("10 Mins" , style: GoogleFonts.getFont("Inter" , fontSize: 16 , fontWeight: FontWeight.w300),)
                  ],
                )
              ],
            ),
          ),
          Expanded(child: Image.asset("Assets/design1Assets/HumanWithDog.png")),
        ],
      ),
    );
  }
}
