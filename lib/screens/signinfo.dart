import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SiginInfo_screen extends StatefulWidget {
  const SiginInfo_screen({Key? key}) : super(key: key);

  @override
  State<SiginInfo_screen> createState() => _SiginInfo_screenState();
}

class _SiginInfo_screenState extends State<SiginInfo_screen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff47B2F3), Color(0xff1DA1F2)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'يرجى ادخال بياناتك',
                    style: GoogleFonts.tajawal(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Image(image: AssetImage('images/signinfo.png')),
                  SizedBox(height: 32,),
                  SizedBox(
                    width: 300.w,
                    child: Text(
                      'يمكنك التسجيل بحسابك الخاص بالفيس بوك أو حساب جوجل',
                      style: GoogleFonts.tajawal(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 100.h,),
                  Container(
                    width: double.infinity,
                    height: 200.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          topLeft: Radius.circular(12)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/homescreen');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Google',
                                  style: TextStyle(
                                      color: Color(0xffffffff),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  width: 24.w,
                                ),
                                Icon(
                                  FontAwesomeIcons.google,
                                  color: Color(0xffFFFFFF),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffEA4335),
                                elevation: 0,
                                minimumSize: Size(double.infinity, 48.h),
                                side: BorderSide(color: Color(0xff39ACF2))),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/homescreen');

                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Facebook ',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  width: 18.w,
                                ),
                                Icon(FontAwesomeIcons.facebook),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff3B5998),
                                elevation: 0,
                                minimumSize: Size(double.infinity, 48.h),
                                side: BorderSide(color: Color(0xff39ACF2))),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
