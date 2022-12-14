import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
class Welcome_Screen extends StatefulWidget {
  const Welcome_Screen({Key? key}) : super(key: key);

  @override
  State<Welcome_Screen> createState() => _Welcome_ScreenState();
}

class _Welcome_ScreenState extends State<Welcome_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 680.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff47B2F3), Color(0xff1DA1F2)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 100.h,
              ),
              Container(child: Text('مرحبا مطعم الريف',style: GoogleFonts.tajawal(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xffffffff)),)),
              SizedBox(height: 16.h,),
              Text('يمكنك اختيار  ما تريد القيام به من هنا',style: GoogleFonts.tajawal(fontSize:16,fontWeight: FontWeight.bold,color: Color(0xffffffff))),
              SizedBox(height: 220.h,),
              Container(
                width: 400.w,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 355.w,
                      height: 300.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            topLeft: Radius.circular(12)),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 16),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/finshprocess');
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'اقرأ QRC',
                                    style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 24,
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xff39ACF2),
                                  elevation: 0,
                                  minimumSize: Size(double.infinity, 56),
                                  side: BorderSide(color: Color(0xff39ACF2))),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, '/finshprocess');

                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'التقارير ',
                                    style: GoogleFonts.poppins(
                                        color: Color(0xff39ACF2),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Color(0xff39ACF2)),
                                  ),
                                  primary: Colors.transparent,
                                  elevation: 0,
                                  minimumSize: Size(double.infinity, 56),
                                  side: BorderSide(color: Color(0xff39ACF2))),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/finshprocess');
                              },
                              child: Text(
                                'افتح التذاكر',
                                style: GoogleFonts.tajawal(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(primary: Color(0xffF1B54A),
                                  minimumSize: Size(double.infinity, 48)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -160,
                        child: Container(
                          width: 400.w,
                            child: Center(child: Image(image: AssetImage('images/man.png'))))),

                  ],
                ),
              )
            ],
          ),

        ),
      ),
    );
  }
}
