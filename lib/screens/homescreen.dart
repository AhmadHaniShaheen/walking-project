import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350.h,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 250.r,
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
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'مرحبا بك',
                                style: GoogleFonts.tajawal(
                                    fontSize: 20.sp, color: Colors.white),
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              Text(
                                'سائد مجدلاوي',
                                style: GoogleFonts.tajawal(
                                    fontSize: 26.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 13,
                    top: 220,
                    child: Container(
                      width: 350.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 150.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                                color: Color(0xffFFF1F1),
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 16),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'سعرات حرارية',
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 24,
                                      ),
                                      Icon(
                                        FontAwesomeIcons.fire,
                                        color: Color(0xffCC0707),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    '122',
                                    style: GoogleFonts.roboto(
                                        color: Color(0xffCC0707),
                                        fontSize: 41.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'كالوري',
                                    style: GoogleFonts.roboto(
                                        color: Color(0xff959595),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 150.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                                color: Color(0xffEAF4FB),
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 16),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'عداد الخطوة',
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 24,
                                      ),
                                      Icon(
                                        Icons.roller_skating,
                                        color: Color(0xff39ACF2),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    '1,228',
                                    style: GoogleFonts.roboto(
                                        color: Color(0xff39ACF2),
                                        fontSize: 41.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'خطوة',
                                    style: GoogleFonts.roboto(
                                        color: Color(0xff959595),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'التصنيفات',
                  style: GoogleFonts.tajawal(
                      fontSize: 20.sp, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Container(
                height: 300.r,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      childAspectRatio: 140 / 103,
                      mainAxisSpacing: 10),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('images/sport.png')),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'رياضة',
                            style: GoogleFonts.tajawal(
                                fontSize: 12.sp, color: Color(0xff5A5A5A)),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, '/resturant');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('images/food.png')),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              'مطاعم',
                              style: GoogleFonts.tajawal(
                                  fontSize: 12.sp, color: Color(0xff5A5A5A)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('images/photo3.png')),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'منتجع صحي',
                            style: GoogleFonts.tajawal(
                                fontSize: 12.sp, color: Color(0xff5A5A5A)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('images/favorite.png')),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'ملابس',
                            style: GoogleFonts.tajawal(
                                fontSize: 12.sp, color: Color(0xff5A5A5A)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/countofwallk');
                },
                child: Text(
                  'حول خطواتك إلى كوبونات',
                  style: GoogleFonts.tajawal(
                      fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(primary: Color(0xffF1B54A),
                  minimumSize: Size(324.w,48.h),
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/homescreen');
                    },
                    icon: Icon(
                      Icons.home,
                      color: Color(0xff39ACF2),
                    )),
                label: 'الرئيسية',
              ),
              BottomNavigationBarItem(
                  icon: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/countofwallk');
                      },
                      icon: Icon(
                        Icons.cabin,
                      )), label: 'الكوبونات'),
              BottomNavigationBarItem(
                  icon: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/contact');
                      },
                      icon: Icon(
                        Icons.contact_phone,
                      )),
                  label: 'اتصل بنا',),
            ],
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}
