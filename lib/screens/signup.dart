import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp_screen extends StatefulWidget {
  const SignUp_screen({Key? key}) : super(key: key);

  @override
  State<SignUp_screen> createState() => _SignUp_screenState();
}

class _SignUp_screenState extends State<SignUp_screen> {
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
                    height: 100.h,
                  ),
                  Text(
                    'تسجيل مستخدم جديد',
                    style: GoogleFonts.tajawal(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  SizedBox(height: 24.h,),
                  Image(image: AssetImage('images/login.png')),
                  SizedBox(height: 24.h,),
                  SizedBox(
                    width: 300,
                    child: Text(
                      'يمكنك اختيار  تسجيل بياناتك كمحل تجاري أو زبون',
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
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          topLeft: Radius.circular(12)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 50,),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signinfo');
                            },
                            child: Text(
                              'زبون',
                              style: TextStyle(
                                  color: Color(0xff39ACF2),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 0,
                              minimumSize: Size(double.infinity, 48.h),
                              side: BorderSide(color: Color(0xff39ACF2))
                            ),
                          ),
                          SizedBox(height: 20,),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signinfo');

                            },
                            child: Text(
                              'محل تجاري',
                              style: TextStyle(
                                  color: Color(0xff39ACF2),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                elevation: 0,
                                minimumSize: Size(double.infinity, 48.h),
                                side: BorderSide(color: Color(0xff39ACF2))
                            ),
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
