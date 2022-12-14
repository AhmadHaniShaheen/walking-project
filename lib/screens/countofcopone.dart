import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CountCopone_Screen extends StatefulWidget {
  const CountCopone_Screen({Key? key}) : super(key: key);

  @override
  State<CountCopone_Screen> createState() => _CountCopone_ScreenState();
}

class _CountCopone_ScreenState extends State<CountCopone_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 800,
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
                                  Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'الكوبونات الحاصل عليها ',
                                    style: GoogleFonts.tajawal(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 200,
                      left: 20,
                      child: Container(
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: GridView(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10,
                                    childAspectRatio: 150 / 240),
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                          child: Text('عدد 2 كارد',style: GoogleFonts.tajawal(fontSize: 12,color: Color(0xffffffff)),),
                                        alignment: Alignment.topRight,
                                      ),
                                    ),

                                    CircleAvatar(
                                      child: Text(
                                        '5%',
                                        style: GoogleFonts.tajawal(
                                            fontSize: 31,
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      backgroundColor:
                                          Color(0xffffffff).withOpacity(0.10),
                                      radius: 40,
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      '2,000',
                                      style: GoogleFonts.tajawal(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffffffff)),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'خطوة',
                                      style: GoogleFonts.tajawal(
                                          fontSize: 12,
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
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                        child: Text('عدد 2 كارد',style: GoogleFonts.tajawal(fontSize: 12,color: Color(0xffffffff)),),
                                        alignment: Alignment.topRight,
                                      ),
                                    ),
                                    CircleAvatar(
                                      child: Text(
                                        '10%',
                                        style: GoogleFonts.tajawal(
                                            fontSize: 31,
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      backgroundColor:
                                          Color(0xffffffff).withOpacity(0.10),
                                      radius: 40,
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      '1,000',
                                      style: GoogleFonts.tajawal(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffffffff)),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'خطوة',
                                      style: GoogleFonts.tajawal(
                                          fontSize: 12,
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
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                        child: Text('عدد 2 كارد',style: GoogleFonts.tajawal(fontSize: 12,color: Color(0xffffffff)),),
                                        alignment: Alignment.topRight,
                                      ),
                                    ),
                                    CircleAvatar(
                                      child: Text(
                                        '15%',
                                        style: GoogleFonts.tajawal(
                                            fontSize: 31,
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      backgroundColor:
                                          Color(0xffffffff).withOpacity(0.10),
                                      radius: 40,
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      '1,000',
                                      style: GoogleFonts.tajawal(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffffffff)),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'خطوة',
                                      style: GoogleFonts.tajawal(
                                          fontSize: 12,
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
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                        child: Text('عدد 2 كارد',style: GoogleFonts.tajawal(fontSize: 12,color: Color(0xffffffff)),),
                                        alignment: Alignment.topRight,
                                      ),
                                    ),
                                    CircleAvatar(
                                      child: Text(
                                        '20%',
                                        style: GoogleFonts.tajawal(
                                            fontSize: 31,
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      backgroundColor:
                                          Color(0xffffffff).withOpacity(0.10),
                                      radius: 40,
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      '4,000',
                                      style: GoogleFonts.tajawal(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffffffff)),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'خطوة',
                                      style: GoogleFonts.tajawal(
                                          fontSize: 12,
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
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
