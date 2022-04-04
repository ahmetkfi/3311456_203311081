import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_assistant/ChangeCityPage/change_city_page.dart';
import 'package:travel_assistant/StartPage/StartPage.dart';
import 'package:travel_assistant/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_assistant/fonksiyonlar.dart';
class NavigationDrawerWidget extends StatelessWidget {
  String? isim;
  NavigationDrawerWidget({ Key? key,required this.isim }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Material(
        color: altColor,
        child: Container(
          margin:EdgeInsets.only(top: 80.h),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            children: [
              buildMenuItem(text: "Sehir değiştir", icon: Icons.location_city_rounded,onClicked: (){
                route(ChangeCity(isim: isim,), context);
              }),
              Divider(color: Colors.white,height: 10.h,),
              buildMenuItem(text: "Anasayfaya dön", icon: Icons.home_filled,onClicked: (){
                  route(StartPage(), context);
              }),
              Divider(color: Colors.white,height: 10.h,),

            ],
          ),
        ),
      ),
    );
  }
  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }){
    final color=Colors.white;
      return ListTile(
        leading: Icon(icon,color: color,size: 35.sp,),
        title: Text(text,style: GoogleFonts.openSans(textStyle:TextStyle(fontSize: 20.sp,color: color,fontWeight: FontWeight.normal),)),
        onTap: onClicked,
        
      );
  }
}