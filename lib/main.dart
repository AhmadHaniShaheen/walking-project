import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walkingproject/screens/contact.dart';
import 'package:walkingproject/screens/countofcopone.dart';
import 'package:walkingproject/screens/countofwallk.dart';
import 'package:walkingproject/screens/finshprocess.dart';
import 'package:walkingproject/screens/homescreen.dart';
import 'package:walkingproject/screens/login_Screen.dart';
import 'package:walkingproject/screens/opencard.dart';
import 'package:walkingproject/screens/qrccode.dart';
import 'package:walkingproject/screens/qrccodsteps.dart';
import 'package:walkingproject/screens/rebots.dart';
import 'package:walkingproject/screens/rest1.dart';
import 'package:walkingproject/screens/resturant.dart';
import 'package:walkingproject/screens/signinfo.dart';
import 'package:walkingproject/screens/signup.dart';
import 'package:walkingproject/screens/splach.dart';
import 'package:walkingproject/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 640),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/splach',
        routes: {
          '/splach':(context)=>Splach_Screen(),
          '/signup':(context)=>SignUp_screen(),
          '/signinfo':(context)=>SiginInfo_screen(),
          '/homescreen':(context)=>Home_Screen(),
          '/resturant':(context)=>Resturant_Secreen(),
          '/rest1':(context)=>Rest1_screen(),
          '/countofwallk':(context)=>Count_Screen(),
          '/qrccode':(context)=>QRC_Screen(),
          '/qrccodesteps':(context)=>QRCsteps_Screen(),
          '/countofcopone':(context)=>CountCopone_Screen(),
          '/login_Screen':(context)=>Login_Screen(),
          '/welcome':(context)=>Welcome_Screen(),
          '/finshprocess':(context)=>Finsh_Screen(),
          '/opencard':(context)=>OpenCard_Screen(),
          '/rebots':(context)=>Rebots_Screen(),
          '/contact':(context)=>Contact_Screen(),
        },
      );
    });
  }
}
