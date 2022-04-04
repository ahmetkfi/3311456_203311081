import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_assistant/Welcome/welcomeScreen.dart';
import 'package:travel_assistant/constants.dart';
import 'package:travel_assistant/fonksiyonlar.dart';
class StartPage extends StatelessWidget {
  const StartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          body:SafeArea(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                children: [
                  Image(image: AssetImage('assets/images/logo.png')),
                  Text("GEZMEK İÇİN HAZIR MISIN?",
                    style: GoogleFonts.spartan(
                      textStyle: TextStyle(
                        fontSize: 20.sp,
                        color: altColor,
                      ),
                    ),
                    
                  ),
                  SizedBox(height: 100.h,),
                  RaisedButton(onPressed: (){
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => WelcomeScreen())));//bir önceki pagei kaldırıp yeni pagei açıyor.
                  },
                    child: Text("Başla",style: TextStyle(color: Colors.white,fontSize: 20.sp),),
                    color: altColor,
                  ),
                ],
              ),
            ),
          )
        ),
    );
  }
}