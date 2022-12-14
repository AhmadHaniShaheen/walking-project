import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Resturant_Secreen extends StatefulWidget {
  const Resturant_Secreen({Key? key}) : super(key: key);

  @override
  State<Resturant_Secreen> createState() => _Resturant_SecreenState();
}

class _Resturant_SecreenState extends State<Resturant_Secreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xffF9F9F9),
        body: SingleChildScrollView(
          child: Column(
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
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            IconButton(onPressed: (){
                              Navigator.pushNamed(context, '/homescreen');
                            }, icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),),
                            Text(
                              'المطاعم',
                              style: GoogleFonts.tajawal(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff707070)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff707070)),
                              ),
                              fillColor: Color(0xffffffff),
                              filled: true,
                              hintText: 'يمكنك البحث هنا',
                              hintStyle: GoogleFonts.tajawal(
                                  fontSize: 15.sp, color: Color(0xffC6C4CA)),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xff47B2F3),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: DropdownButton(
                  items: [
                    DropdownMenuItem(
                      child: Text('فلسطين'),
                      value: 'P',
                    ),
                    DropdownMenuItem(
                      child: Text('السعودية'),
                      value: 'A',
                    ),
                    DropdownMenuItem(
                      child: Text('إمارات'),
                      value: 'S',
                    ),
                  ],
                  onChanged: (Value) {},
                  hint: Row(
                    children: [
                      Icon(
                        Icons.pin_drop,
                        color: Color(0xff39ACF2),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'اختر مدينتك',
                        style: GoogleFonts.tajawal(
                            fontSize: 16.sp, color: Color(0xff000000)),
                      ),
                    ],
                  ),
                  icon: Icon(Icons.expand_more),
                  isExpanded: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: GridView(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        childAspectRatio: 140.w / 210.h,
                        crossAxisSpacing: 10),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('images/rest2.png')),
                            SizedBox(
                              height: 16.h,
                            ),
                            Text('مطعم ماكدونلز',style: GoogleFonts.tajawal(fontSize: 16.sp,color: Color(0xff383838),fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 16.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xff2FDF84),
                                  radius: 18,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star,color: Color(0xffF6C52F),),
                                Icon(Icons.star,color: Color(0xffF6C52F),),
                                Icon(Icons.star,color: Color(0xffF6C52F),),
                                Icon(Icons.star,color: Color(0xffF6C52F),),
                                Icon(Icons.star_outline,color: Color(0xffF6C52F),),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('images/rest1.png')),
                            SizedBox(
                              height: 16.h,
                            ),
                            Text('مطعم كنتاكي',style: GoogleFonts.tajawal(fontSize: 16.sp,color: Color(0xff383838),fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 16.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xff2FDF84),
                                  radius: 18,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                CircleAvatar(
                                  backgroundColor: Color(0xffFDD640),
                                  radius: 18,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star,color: Color(0xffF6C52F),),
                                Icon(Icons.star,color: Color(0xffF6C52F),),
                                Icon(Icons.star,color: Color(0xffF6C52F),),
                                Icon(Icons.star,color: Color(0xffF6C52F),),
                                Icon(Icons.star_outline,color: Color(0xffF6C52F),),
                              ],
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, '/rest1');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('images/Rest4.png')),
                              SizedBox(
                                height: 16.h,
                              ),
                              Text('مطعم الريف',style: GoogleFonts.tajawal(fontSize: 16.sp,color: Color(0xff383838),fontWeight: FontWeight.bold),),
                              SizedBox(
                                height: 16.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Color(0xff2FDF84),
                                    radius: 18,
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Color(0xffFDD640),
                                    radius: 18,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star,color: Color(0xffF6C52F),),
                                  Icon(Icons.star,color: Color(0xffF6C52F),),
                                  Icon(Icons.star,color: Color(0xffF6C52F),),
                                  Icon(Icons.star,color: Color(0xffF6C52F),),
                                  Icon(Icons.star_outline,color: Color(0xffF6C52F),),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('images/rest3.png')),
                            SizedBox(
                              height: 16.h,
                            ),
                            Text(' مطعم زيتونة',style: GoogleFonts.tajawal(fontSize: 16.sp,color: Color(0xff383838),fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 16.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xff2FDF84),
                                  radius: 18,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                CircleAvatar(
                                  backgroundColor: Color(0xffFDD640),
                                  radius: 18.w,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star,color: Color(0xffF6C52F),),
                                Icon(Icons.star,color: Color(0xffF6C52F),),
                                Icon(Icons.star,color: Color(0xffF6C52F),),
                                Icon(Icons.star,color: Color(0xffF6C52F),),
                                Icon(Icons.star_outline,color: Color(0xffF6C52F),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
