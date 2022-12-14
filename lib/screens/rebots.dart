import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Rebots_Screen extends StatefulWidget {
  const Rebots_Screen({Key? key}) : super(key: key);

  @override
  State<Rebots_Screen> createState() => _Rebots_ScreenState();
}

class _Rebots_ScreenState extends State<Rebots_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xff39ACF2), Color(0xff008BDF)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(12))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      SizedBox(height: 40,),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios),
                            color: Colors.white,
                          ),
                          Text(
                            'المطاعم',
                            style: GoogleFonts.tajawal(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: GridView.builder(
                  shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 0), itemCount: 2,itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEAF4FB),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffddddddd),
                            blurRadius: 20,
                            offset: Offset(-3,4)
                          )
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [Color(0xffE8D73F),Color(0xffF5A84E)])
                            ),
                            child: Icon(Icons.area_chart,color: Colors.white,),
                          ),
                          SizedBox(height: 16),
                          Text('التقرير الشهري',style: GoogleFonts.tajawal(fontSize: 16,color:Color(0xff1C162E)),),
                          SizedBox(height: 8,),
                          Text('عدد الكوبونات شهرياً',style: GoogleFonts.tajawal(fontSize: 12,color: Color(0xffC6C4CA)),),
                        ],
                      ),
                    ),
                  );
                }),
              ),
              Container(
                height: 300,
                child: PageView(
                  children: [
                    Image(image: AssetImage('images/chart1.png')),
                    Image(image: AssetImage('images/chart2.png')),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFDC83D),
                                    borderRadius: BorderRadius.circular(7)
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Text('50 بطاقة خصم 5%',style: GoogleFonts.tajawal(fontSize: 12,color: Color(0xffC6C4CA)),),

                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                      color: Color(0xff2FDF84),
                                      borderRadius: BorderRadius.circular(7)
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Text('50 بطاقة خصم 5%',style: GoogleFonts.tajawal(fontSize: 12,color: Color(0xffC6C4CA)),),

                              ],
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 32,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                      color: Color(0xff4267B2),
                                      borderRadius: BorderRadius.circular(7)
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Text('50 بطاقة خصم 5%',style: GoogleFonts.tajawal(fontSize: 12,color: Color(0xffC6C4CA)),),

                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                      color: Color(0xffCC0707),
                                      borderRadius: BorderRadius.circular(7)
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Text('50 بطاقة خصم 5%',style: GoogleFonts.tajawal(fontSize: 12,color: Color(0xffC6C4CA)),),

                              ],
                            ),
                          ),

                        ],
                      ),

                    ],
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
