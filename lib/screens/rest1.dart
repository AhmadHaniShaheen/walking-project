import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Rest1_screen extends StatefulWidget {
  const Rest1_screen({Key? key}) : super(key: key);

  @override
  State<Rest1_screen> createState() => _Rest1_screenState();
}

class _Rest1_screenState extends State<Rest1_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1EFEF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 370.r,
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
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/resturant');
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
                                IconButton(
                                    onPressed: () {
                                      showRestrantEvaluted();
                                    },
                                    icon: Icon(Icons.star,
                                        color: Color(0xffFFFFFF)))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 235,
                    child: Container(
                      height: 150.r,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: FittedBox(
                          child: Image(
                            image: AssetImage(
                              'images/C3.png',
                            ),
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 105.w,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Image(
                            image: AssetImage('images/C1.png'),
                          ),
                        )),
                    Container(
                        width: 105.w,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Image(
                            image: AssetImage('images/C2.png'),
                          ),
                        )),
                    Container(
                        width: 105.w,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Image(
                            image: AssetImage('images/C3.png'),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'الكوبونات التي يستبدلها المطعم',
                    style: GoogleFonts.tajawal(
                        fontSize: 14.sp, fontWeight: FontWeight.w600),
                  )),
            ),
            SizedBox(
              height: 16,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Container(
                      width: 90.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        color: Color(0xffFDD640),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          '5%',
                          style: GoogleFonts.tajawal(
                              fontSize: 21.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 90.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        color: Color(0xff2FDF84),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          '10%',
                          style: GoogleFonts.tajawal(
                              fontSize: 21.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                height: 140.h,
                width: 500.w,
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            'نبذة عن المطعم',
                            style: GoogleFonts.tajawal(
                                fontWeight: FontWeight.w700, fontSize: 14.sp),
                          )),
                      SizedBox(
                        height: 8.h,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'نقدم قائمة متنوعة من المؤكلات والاطباق الفلسطينية  التراثية و العربية و الغربية المحضرة بطريقة احترافية و شهية بأيدي اشهر الطباخين المحليين والعالمين',
                          style:
                              TextStyle(color: Color(0xff7C7D7E), fontSize: 12.sp),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150.w,
                    height: 140.h,
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 36.w,
                            height: 36.h,
                            decoration: BoxDecoration(
                                color: Color(0xff39ACF2),
                                borderRadius: BorderRadius.circular(7)),
                            child: Icon(
                              Icons.location_pin,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Text(
                            'موقع المطعم',
                            style: GoogleFonts.tajawal(fontSize: 14.sp),
                          ),
                          Text(
                            'شارع الطيرة الرئيسي شارع 69',
                            style: GoogleFonts.tajawal(
                                fontSize: 14.sp, color: Color(0xff1C162E)),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 150.w,
                    height: 140.h,
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 36.w,
                            height: 36.h,
                            decoration: BoxDecoration(
                                color: Color(0xff39ACF2),
                                borderRadius: BorderRadius.circular(7)),
                            child: Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Text(
                            'هاتف المطعم',
                            style: GoogleFonts.tajawal(fontSize: 14.sp),
                          ),
                          Text(
                            '+970 592 030 100',
                            style: GoogleFonts.tajawal(
                                fontSize: 14.sp, color: Color(0xff1C162E)),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void showRestrantEvaluted() {
    showDialog(
        context: context,
        builder: (context) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Center(
              child: AlertDialog(
                title: Text(
                  'تقييم المحل التجاري',
                  style: GoogleFonts.tajawal(
                      fontSize: 16.sp, fontWeight: FontWeight.w700),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'تقييمك يهمنا ويساعدنا في تحسين الخدمة لاحقاً',
                      style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700, fontSize: 14.sp),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xffF6C52F),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffF6C52F),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffF6C52F),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffF6C52F),
                        ),
                        Icon(
                          Icons.star_outline,
                          color: Color(0xffF6C52F),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      '4/5',
                      style: GoogleFonts.tajawal(
                          fontSize: 16.sp, color: Color(0xff000000)),
                    )
                  ],
                ),

                actions: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('إلغاء')),
                      SizedBox(width: 8.w,),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('موافق')),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
