import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SafeArea(
            child: Container(
              width: double.infinity,
              height: 610.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff47B2F3), Color(0xff1DA1F2)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('images/stepwin-03.png')),
                    SizedBox(height: 48.h,),
                    Text(
                      'تسجيل الدخول',
                      style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color(0xffffffff)),
                    ),
                    SizedBox(height: 48,),
                    Column(
                      children: [
                        Container(
                          height: 48.h,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF5F6FA),
                              hintText: 'اسم المستخدم',
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                            ),
                          ),
                        ),
                        SizedBox(height: 8.h,),
                        Container(
                          height: 48.h,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF5F6FA),
                              hintText: 'كلمة المرور',
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 64.h,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/welcome');
                      },
                      child: Text(
                        'دخول',
                        style: GoogleFonts.tajawal(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffffff),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(primary: Color(0xffF1B54A),
                        minimumSize: Size(double.infinity, 48.h)
                      ),
                    ),
                    SizedBox(height: 24.h,)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
