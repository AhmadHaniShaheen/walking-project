import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class OpenCard_Screen extends StatefulWidget {
  const OpenCard_Screen({Key? key}) : super(key: key);

  @override
  State<OpenCard_Screen> createState() => _OpenCard_ScreenState();
}

class _OpenCard_ScreenState extends State<OpenCard_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Container(
              height: 100,
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
                child: Column(
                  children: [
                    SizedBox(height: 40,),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back_ios),
                          color: Colors.white,
                        ),
                        Text(
                          'المطاعم',
                          style: GoogleFonts.tajawal(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24,),
            SizedBox(
              width: 300,
                child: Text('يمكنك فتح تذكرة تشرح فيها سبب وجود خطأ ليتم إرساله للأدمن',style: GoogleFonts.tajawal(fontSize: 16,color: Color(0xff000000)),textAlign: TextAlign.center,)),
            SizedBox(height: 24,),
            TextField(
              maxLines: 8,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                hintText: 'يمكنك الكتابة هنا',
                hintStyle: GoogleFonts.tajawal(color: Color(0xffC6C4CA),fontSize: 15),
                fillColor: Color(0xffFFFFFF),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffffffff))
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffffffff))
                ),
              ),
            ),
            SizedBox(height: 24,),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'ارسال',
                style: GoogleFonts.tajawal(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffffffff),
                ),
              ),
              style: ElevatedButton.styleFrom(primary: Color(0xffF1B54A),
                  minimumSize: Size(170, 48)
              ),
            )



          ],
        ),
      ),
    );
  }
}
