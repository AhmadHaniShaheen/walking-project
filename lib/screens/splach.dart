import 'package:flutter/material.dart';
class Splach_Screen extends StatefulWidget {
  const Splach_Screen({Key? key}) : super(key: key);

  @override
  State<Splach_Screen> createState() => _Splach_ScreenState();
}

class _Splach_ScreenState extends State<Splach_Screen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),
            () {Navigator.pushReplacementNamed(context, '/signup');});
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(gradient: LinearGradient(colors: [
              Color(0xff47B2F3),
              Color(0xff1DA1F2)
            ],begin: Alignment.topCenter,end: Alignment.bottomCenter),
            ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(image: AssetImage('images/stepwin-03.png')),
              Image(image: AssetImage('images/Component 28 – 1.png'))
            ],
          ),
          ),
      ),
    );
  }
}
