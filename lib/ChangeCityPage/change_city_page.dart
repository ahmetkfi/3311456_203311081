import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_assistant/CitysPage/bursa.dart';
import 'package:travel_assistant/CitysPage/canakkale.dart';
import 'package:travel_assistant/CitysPage/denizli.dart';
import 'package:travel_assistant/CitysPage/edirne.dart';
import 'package:travel_assistant/CitysPage/istanbul.dart';
import 'package:travel_assistant/CitysPage/izmir.dart';
import 'package:travel_assistant/CitysPage/mardin.dart';
import 'package:travel_assistant/CitysPage/mugla.dart';
import 'package:travel_assistant/CitysPage/nevsehir.dart';
import 'package:travel_assistant/CitysPage/sivas.dart';
import 'package:travel_assistant/constants.dart';
import 'package:travel_assistant/fonksiyonlar.dart';

class ChangeCity extends StatefulWidget {
  String? isim;
  ChangeCity({Key? key,required this.isim}) : super(key: key);

  @override
  State<ChangeCity> createState() => _ChangeCityState();
}

class _ChangeCityState extends State<ChangeCity> {
  final sehirler=['İstanbul','İzmir','Bursa','Edirne','Muğla','Çanakkale','Sivas','Mardin','Nevşehir','Denizli'];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Şehir Değiştir"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
          /*gitmek isteidğin şehir seç texti*/Center(
            child: Text(
              "Gitmek istediğin şehri seç",
              style: GoogleFonts.spartan(
                textStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          /*sehir seçme alanı (dropdownmenu)*/Center(
            child:               Container(
                padding: EdgeInsets.only(left:10.sp),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8.r),
                ),
                child: DropdownButtonHideUnderline(child: 
                  DropdownButton<String>(
                    hint: Text("Gezmek istediğin şehri seç"),
                    value: value,
                    items: sehirler.map(buildMenuItem).toList(),
                    onChanged: (value)=>setState(()=> this.value=value),
                  )
                ),
              ),
          ),
          SizedBox(height: 10.h,),
          RaisedButton(onPressed: (){
              switch(value){
                      case "İstanbul" : 
                        route(IstanbulPage(isim:widget.isim), context);
                        break;
                        case "İzmir":
                        route(IzmirPage(isim: widget.isim,), context);
                        break;
                        case "Bursa":
                        route(BursaPage(isim:widget.isim), context);
                        break;
                        case "Edirne":
                        route(EdirnePage(isim:widget.isim), context);
                        break;
                        case "Muğla":
                        route(MuglaPage(isim:widget.isim), context);
                        break;
                        case "Çanakkale":
                        route(CanakkalePage(isim:widget.isim), context);
                        break;
                        case "Sivas":
                        route(SivasPage(isim:widget.isim), context);
                        break;
                        case "Mardin":
                        route(MardinPage(isim:widget.isim), context);
                        break;
                        case "Nevşehir":
                        route(NevsehirPage(isim:widget.isim), context);
                        break;
                        case "Denizli":
                        route(DenizliPage(isim:widget.isim), context);
                        break;

                    }
          },
          child: Text("GİT",style: TextStyle(fontSize: 14.sp,color: Colors.white),),
          color: altColor,
          ),
        ]),
      ),
    );
  }
   DropdownMenuItem<String> buildMenuItem(String sehir)=>DropdownMenuItem(
    child: Text(sehir),
    value: sehir,
  );
}
