import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class QRCsteps_Screen extends StatefulWidget {
  const QRCsteps_Screen({Key? key}) : super(key: key);

  @override
  State<QRCsteps_Screen> createState() => _QRCsteps_ScreenState();
}

class _QRCsteps_ScreenState extends State<QRCsteps_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xff39ACF2),
                    Color(0xff008BDF),
                  ])
              ),
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                        Text('QRC Code',style: GoogleFonts.tajawal(color:Color(0xffffffff),fontSize: 20,fontWeight: FontWeight.w600))
                      ],
                    ),
                  ),
                  SizedBox(height: 150,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Container(
                      width: 310,
                      height: 440,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 16.0),
                        child: Column(

                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(' كوبون خصم',style: GoogleFonts.tajawal(fontSize:15,color: Color(0xff000000),fontWeight: FontWeight.bold),),
                                Text('10%',style: GoogleFonts.tajawal(color: Color(0xff959595),fontWeight: FontWeight.bold,fontSize: 16),)
                              ],
                            ),
                            SizedBox(height: 24,),
                            CircleAvatar(
                              radius: 120,
                                backgroundColor: Color(0xff2FDF84),
                                child: Image(image: AssetImage('images/qr.png'))),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    child: Center(child: Text('4',style: GoogleFonts.inriaSans(fontSize: 18,fontWeight: FontWeight.w700,color: Color(0xff1C162E)),)),
                                    width: 57,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(18),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xffB0AEAE),
                                            blurRadius: 5,
                                            spreadRadius: 1,
                                            offset: Offset(0, 5), // changes position of shadow
                                          ),
                                        ])
                                ),
                                Container(
                                    child: Center(child: Text('3',style: GoogleFonts.inriaSans(fontSize: 18,fontWeight: FontWeight.w700,color: Color(0xff1C162E)),)),
                                    width: 57,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(18),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xffB0AEAE),
                                            blurRadius: 5,
                                            spreadRadius: 1,
                                            offset: Offset(0, 5), // changes position of shadow
                                          ),
                                        ])
                                ),
                                Container(
                                    child: Center(child: Text('2',style: GoogleFonts.inriaSans(fontSize: 18,fontWeight: FontWeight.w700,color: Color(0xffFEFEFE)),)),
                                    width: 57,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xff39ACF2),
                                        borderRadius: BorderRadius.circular(18),)
                                ),
                                Container(
                                    child: Center(child: Text('1',style: GoogleFonts.inriaSans(fontSize: 18,fontWeight: FontWeight.w700,color: Color(0xff1C162E)),)),
                                    width: 57,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(18),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xffB0AEAE),
                                            blurRadius: 5,
                                            spreadRadius: 1,
                                            offset: Offset(0, 5), // changes position of shadow
                                          ),
                                        ])
                                ),


                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
          ),
        ),
      )

    );
  }
}
