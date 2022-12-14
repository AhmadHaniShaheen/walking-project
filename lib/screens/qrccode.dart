import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class QRC_Screen extends StatefulWidget {
  const QRC_Screen({Key? key}) : super(key: key);

  @override
  State<QRC_Screen> createState() => _QRC_ScreenState();
}

class _QRC_ScreenState extends State<QRC_Screen> {
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
                  SizedBox(height: 200,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Container(
                      width: 310,
                      height: 410,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 16.0),
                        child: Column(
                          children: [
                            Text('تم شراء كوبون أخضر بقيمة 2000 خطوة  بنجاح',style: GoogleFonts.tajawal(fontSize: 16,fontWeight: FontWeight.w700),),
                            SizedBox(height: 24,),
                            CircleAvatar(
                              radius: 120,
                                backgroundColor: Color(0xff2FDF84),
                                child: Image(image: AssetImage('images/qr.png'))),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('رصيدك الحالي هو',style: GoogleFonts.tajawal(fontSize:15,color: Color(0xff000000),fontWeight: FontWeight.bold),),
                                Text('0 خطوة',style: GoogleFonts.tajawal(color: Color(0xff959595),fontWeight: FontWeight.bold,fontSize: 16),)
                              ],
                            ),
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
