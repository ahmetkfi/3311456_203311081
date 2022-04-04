import 'package:flutter/material.dart';
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
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_assistant/fonksiyonlar.dart';
import 'package:fluttertoast/fluttertoast.dart';



class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final sehirler=['İstanbul','İzmir','Bursa','Edirne','Muğla','Çanakkale','Sivas','Mardin','Nevşehir','Denizli'];
  String? value;
  String? isim;
  TextEditingController textController=TextEditingController();
  String? errorMessage;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Travel Assitant"),
        centerTitle: true,
        actions: [
          Icon(
            Icons.wallet_travel,
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Text(
                "Hoş Geldin",
                style: GoogleFonts.spartan(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                      fontSize: 18.sp),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "İsmini gir ve gezmek istediğin şehri seç",
                style: GoogleFonts.spartan(
                  textStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              TextField(
                controller:textController,
                textInputAction:TextInputAction.done,
                onChanged: (isim) {
                  setState(() {
                    this.isim = isim;
                  });
                },
                decoration: InputDecoration(
                  hintText: "İsiminizi giriniz",
                  errorText: errorMessage,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0)),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                "Gezeceğin şehri seç",
                style: GoogleFonts.spartan(
                  textStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
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
              SizedBox(
                height: 17.h,
              ),
              RaisedButton(
                  onPressed: () {
                    if(textController.text==""||textController.text.length<=3){
                          Fluttertoast.showToast(msg: "Lutfen adinizi giriniz!",gravity: ToastGravity.CENTER_RIGHT,textColor:Colors.white,backgroundColor: altColor,);
                    }else{
                      switch(value){
                      case "İstanbul" : 
                        route(IstanbulPage(isim:isim), context);
                        break;
                        case "İzmir":
                        route(IzmirPage(isim: isim,), context);
                        break;
                        case "Bursa":
                        route(BursaPage(isim:isim), context);
                        break;
                        case "Edirne":
                        route(EdirnePage(isim:isim), context);
                        break;
                        case "Muğla":
                        route(MuglaPage(isim:isim), context);
                        break;
                        case "Çanakkale":
                        route(CanakkalePage(isim:isim), context);
                        break;
                        case "Sivas":
                        route(SivasPage(isim:isim), context);
                        break;
                        case "Mardin":
                        route(MardinPage(isim:isim), context);
                        break;
                        case "Nevşehir":
                        route(NevsehirPage(isim:isim), context);
                        break;
                        case "Denizli":
                        route(DenizliPage(isim:isim), context);
                        break;

                    }
                    }
                    
                  },
                  child: Text(
                    "Gezmeye Başla",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  color: altColor,
                  textColor: Colors.white),
            ],
          ),
        ),
      ),
    );
    
  }
  DropdownMenuItem<String> buildMenuItem(String sehir)=>DropdownMenuItem(
    child: Text(sehir),
    value: sehir,
  );
}
