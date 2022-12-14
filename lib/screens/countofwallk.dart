import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Count_Screen extends StatefulWidget {
  const Count_Screen({Key? key}) : super(key: key);

  @override
  State<Count_Screen> createState() => _Count_ScreenState();
}

class _Count_ScreenState extends State<Count_Screen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 290,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xff39ACF2),
                                    Color(0xff008BDF)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(24),
                                  bottomRight: Radius.circular(12))),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/homescreen');
                                    },
                                    icon: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'مطعم الريف',
                                    style: GoogleFonts.tajawal(
                                        fontSize: 20.sp, color: Colors.white),
                                  ),
                                ],
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 220,
                      left: 20,
                      child: Container(
                        width: 340.w,
                        height: 75.h,
                        decoration: BoxDecoration(
                            color: Color(0xffEAF4FB),
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'رصيد الخطوات الحالي',
                                style: GoogleFonts.tajawal(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff222222)),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'خطوة',
                                    style: GoogleFonts.tajawal(
                                        fontSize: 12.sp, color: Color(0xff222222)),
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Text(
                                    '1,228',
                                    style: GoogleFonts.tajawal(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffCC0707)),
                                  ),
                                  SizedBox(height: 8.h,)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: GridView(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.h,
                      crossAxisSpacing: 10.w,
                      childAspectRatio: 150.w / 180.h),
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Text(
                              '5%',
                              style: GoogleFonts.tajawal(
                                  fontSize: 31.sp,
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.bold),
                            ),
                            backgroundColor:
                                Color(0xffffffff).withOpacity(0.10),
                            radius: 40,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            '2,000',
                            style: GoogleFonts.tajawal(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffffffff)),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'خطوة',
                            style: GoogleFonts.tajawal(
                                fontSize: 12.sp,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffFDD640),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Text(
                              '10%',
                              style: GoogleFonts.tajawal(
                                  fontSize: 31.sp,
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.bold),
                            ),
                            backgroundColor:
                                Color(0xffffffff).withOpacity(0.10),
                            radius: 40,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            '1,000',
                            style: GoogleFonts.tajawal(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffffffff)),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'خطوة',
                            style: GoogleFonts.tajawal(
                                fontSize: 12.sp,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff2FDF84),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Text(
                              '15%',
                              style: GoogleFonts.tajawal(
                                  fontSize: 31.sp,
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.bold),
                            ),
                            backgroundColor:
                                Color(0xffffffff).withOpacity(0.10),
                            radius: 40,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            '1,000',
                            style: GoogleFonts.tajawal(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffffffff)),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'خطوة',
                            style: GoogleFonts.tajawal(
                                fontSize: 12.sp,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff4267B2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Text(
                              '20%',
                              style: GoogleFonts.tajawal(
                                  fontSize: 31.sp,
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.bold),
                            ),
                            backgroundColor:
                                Color(0xffffffff).withOpacity(0.10),
                            radius: 40,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            '4,000',
                            style: GoogleFonts.tajawal(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffffffff)),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'خطوة',
                            style: GoogleFonts.tajawal(
                                fontSize: 12.sp,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffCC0707),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: Text('العدد',style: GoogleFonts.tajawal(color: Color(0xffCBC9D9),fontSize: 16.sp),),
                        style:
                            ElevatedButton.styleFrom(
                                primary: Color(0xffF5F6FA),
                              minimumSize: Size(130.w, 56.h)
                            )),
                    SizedBox(width: 24.w,),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text('الرصيد المطلوب',style: GoogleFonts.tajawal(color: Color(0xffCBC9D9),fontSize: 16),),
                        style:
                            ElevatedButton.styleFrom(
                                primary: Color(0xffF5F6FA),
                              minimumSize: Size(130.w, 56.h)
                            )),
                  ],
                ),
              ),
              SizedBox(height: 12.h,),
              Center(child: ElevatedButton(onPressed: (){
                showAlertbuy();
              }, child: Text('شراء',style: GoogleFonts.tajawal(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Color(0xffffffff)),),style: ElevatedButton.styleFrom(primary: Color(0xffF1B54A),minimumSize: Size(170.w, 57.h)),)),
              SizedBox(height: 40.h,),
            ],
          ),
        ),
      ),
    );
  }
  void showAlertbuy(){
    showDialog(context: context, builder: (context){
      return Directionality(
        textDirection: TextDirection.rtl,
        child: AlertDialog(
          title: Text('!نحن نأسف'),
          content: Text('عفواً لا يوجد رصيد كافي لإتمام  عملية الشراء'),
          actions: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('إلغاء',style: GoogleFonts.tajawal(fontSize: 14,color: Color(0xff39ACF2)),),style: ElevatedButton.styleFrom(primary: Colors.transparent,elevation: 0),),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('موافق',style: GoogleFonts.tajawal(fontSize: 14,color: Color(0xffffffff)),),style: ElevatedButton.styleFrom(primary: Color(0xff39ACF2)),)
          ],
        ),
      );
    });
  }
}
