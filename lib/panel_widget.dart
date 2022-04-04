import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_assistant/constants.dart';
class PanelWidget extends StatefulWidget {
  final ScrollController controller;
  final PanelController panelController;
  String? isim;
  String? sehirBilgisi;
  String? sehirBaslik;
  String? sehirAltBaslik;
  List<String> resimUrl;
  
   PanelWidget({
      Key? key, required this.controller ,required this.panelController,required this.isim,required this.sehirBilgisi,required this.sehirBaslik
      ,required this.sehirAltBaslik, required this.resimUrl,
      }
      ) : super(key: key);

  @override
  State<PanelWidget> createState() => _PanelWidgetState();
}

class _PanelWidgetState extends State<PanelWidget> {
  int activeIndex=0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: widget.controller,
      padding: EdgeInsets.zero,
      children: <Widget>[
        SizedBox(height: 10.h,),
        buildDragHandle(),
          SizedBox(height: 36.h,),
          buildAboutText(),
      
      ],
    );
  }

  Widget buildAboutText()=>Container(
    padding: EdgeInsets.symmetric(horizontal: 24.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Text('${widget.sehirBaslik}', style:GoogleFonts.spartan(
              textStyle: TextStyle(
                fontSize: 24.sp,
                color: Colors.grey,
              ),
          ),),
        ),
        SizedBox(height: 5.h,),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
               CarouselSlider.builder(
                options: CarouselOptions(height: 200.h,
                  
                 enlargeCenterPage: true,
                 enlargeStrategy: CenterPageEnlargeStrategy.height,
                  autoPlayInterval: Duration(seconds: 8),
                  onPageChanged:(index,reason){
                    setState(() {
                      activeIndex=index;
                    });
                  }
                      
                ),
                itemCount: widget.resimUrl.length,
                itemBuilder: (context,index,realIndex){
                  final urlImage=widget.resimUrl[index];
                  return buildImage(urlImage,index);
                },
            ),
             SizedBox(height: 32.h,),
             buildIndicator(),
            ],
          ),
        ),
        SizedBox(height: 20.h,),
        Text('${widget.sehirAltBaslik}',style:GoogleFonts.spartan( textStyle:TextStyle(fontWeight: FontWeight.w600,fontSize: 20.sp,color: Colors.black87,)),),
        SizedBox(height: 12.h,),
        
        Text('${widget.sehirBilgisi}',style:TextStyle(fontSize: 18.sp, height:1.5)),
      ],
    ),
  );

  Widget buildDragHandle()=>GestureDetector(
    child: Center(
      child: Container(
        width: 30.w,
        height: 5.h,
        decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(12.r)),
      ),
    ),
    onTap: togglePanel,
  );

  void togglePanel()=>widget.panelController.isPanelOpen?widget.panelController.close():widget.panelController.open();
  Widget buildImage(String urlImage,int index)=>Container(
    margin: EdgeInsets.symmetric(horizontal: 12.w),
    color: Colors.grey,
    child: Image.asset(
      urlImage,
      fit: BoxFit.cover,
    ),
  );
  Widget buildIndicator()=> AnimatedSmoothIndicator(activeIndex: activeIndex, count: widget.resimUrl.length,

    effect: SlideEffect(
      dotWidth: 10.w,
      dotHeight: 10.h,
        activeDotColor: altColor,
    ),
  );
}