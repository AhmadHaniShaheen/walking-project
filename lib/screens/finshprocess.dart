import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class Finsh_Screen extends StatefulWidget {
  const Finsh_Screen({Key? key}) : super(key: key);

  @override
  State<Finsh_Screen> createState() => _Finsh_ScreenState();
}

class _Finsh_ScreenState extends State<Finsh_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SafeArea(
            child: Container(
                width: double.infinity,
                height: 660.h,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff39ACF2),
                      Color(0xff008BDF),
                    ])
                ),
                child: Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0,top: 8),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                          Text('QRC Code',style: GoogleFonts.tajawal(color:Color(0xffffffff),fontSize: 20.sp,fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                    SizedBox(height: 100.h,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Container(
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
                                  Text('كوبون خصم',style: GoogleFonts.tajawal(fontSize:15.sp,color: Color(0xff000000),fontWeight: FontWeight.bold),),
                                  Text('05%',style: GoogleFonts.tajawal(color: Color(0xff959595),fontWeight: FontWeight.bold,fontSize: 16.sp),)
                                ],
                              ),
                              SizedBox(height: 24.h,),
                              Image(image: AssetImage('images/RQU@.png')),
                              SizedBox(
                                height: 30.h,
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                  child: Text('ادخال قيمة الفاتورة',style: GoogleFonts.tajawal(fontSize: 14.sp,color: Color(0xff7B7890),))),
                              SizedBox(height: 8,),
                              TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: 'خانة غير الزامية',
                                  hintStyle: TextStyle(fontSize: 16,color: Color(0xffCBC9D9),),
                                  filled: true,
                                  fillColor: Color(0xffF5F6FA),
                                ),
                              ),
                              SizedBox(height: 32.h,),
                              ElevatedButton(
                                onPressed: () {
                                  showwarning();
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'انهاء العملية',
                                      style: TextStyle(
                                          color: Color(0xffffffff),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      width: 24.w,
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff39ACF2),
                                    elevation: 0,
                                    minimumSize: Size(double.infinity, 56.h),
                                    side: BorderSide(color: Color(0xff39ACF2))),
                              ),
                              SizedBox(height: 16.h,),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/countofwallk');
                                },
                                child: Text(
                                  'الغاء العملية',
                                  style: GoogleFonts.tajawal(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(primary: Color(0xffF1B54A),
                                    minimumSize: Size(double.infinity, 48.h)
                                ),
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
        ),
      ),
    );
  }
  void showwarning(){
    showDialog(context: context, builder: (context){
      return Directionality(
        textDirection: TextDirection.rtl,
        child: AlertDialog(
          title: Text('تحذير!'),
          content: Text('هذا الكوبون مستخدم من قبل'),
          actions: [
            Center(
              child: ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('حسناً')),
            )
          ],
        ),
      );
    });
  }
}
