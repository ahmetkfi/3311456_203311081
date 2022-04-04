import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_assistant/StartPage/StartPage.dart';
import 'package:travel_assistant/Welcome/welcomeScreen.dart';
import 'package:travel_assistant/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return ScreenUtilInit(builder: ()=>MaterialApp(
            title: "Travel Assistant",
            home: StartPage(),
            debugShowCheckedModeBanner:false,
            theme: ThemeData(
              appBarTheme: AppBarTheme(
                color: altColor,
              )
            ),
        ),
        designSize: const Size(360,640),
        );
  }
}