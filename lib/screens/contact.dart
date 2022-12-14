import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Contact_Screen extends StatefulWidget {
  const Contact_Screen({Key? key}) : super(key: key);

  @override
  State<Contact_Screen> createState() => _Contact_ScreenState();
}

class _Contact_ScreenState extends State<Contact_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SingleChildScrollView(
        child: Directionality(
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
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: (){
                            Navigator.pushNamed(context, '/homescreen');
                          }, icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),),
                          Text(
                            'اتصل بنا',
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
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Container(
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffffffff),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfffffff))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfffffff))),
                          hintText: 'الاسم',
                          hintStyle:
                              TextStyle(fontSize: 16, color: Color(0xffCBC9D9)),
                        ),
                      ),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(color: Color(0xffdddddd),
                          blurRadius: 1,
                          offset: Offset(0,1)
                        ),
                      ]),
                    ),
                    SizedBox(height: 16,),
                    Container(
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffffffff),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfffffff))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfffffff))),
                          hintText: 'الاسم',
                          hintStyle:
                              TextStyle(fontSize: 16, color: Color(0xffCBC9D9)),
                        ),
                      ),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(color: Color(0xffdddddd),
                          blurRadius: 1,
                          offset: Offset(0,1)
                        ),
                      ]),
                    ),
                    SizedBox(height: 16,),
                    Container(
                      child: TextField(
                        maxLines: 8,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'الموضوع',
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
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(color: Color(0xffdddddd),
                            blurRadius: 1,
                            offset: Offset(0,1)
                        ),
                      ]),
                    ),
                    SizedBox(height: 56,),
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
                          minimumSize: Size(double.infinity, 48)
                      ),
                    )


                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BottomNavigationBar(
            currentIndex: 2,
            items:
          [
            BottomNavigationBarItem(icon:Icon( Icons.home,),label: 'الرئيسية'),
            BottomNavigationBarItem(icon:Icon( Icons.show_chart),label: 'الكوبونات'),
            BottomNavigationBarItem(icon:Icon( Icons.account_balance,color: Color(0xff39ACF2),),label: 'اتصل بنا'),
          ],type: BottomNavigationBarType.fixed,),
        ),
      ),

    );
  }
}
