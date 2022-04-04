import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travel_assistant/mapsWidget.dart';
import 'package:travel_assistant/nav_drawer_widget.dart';
import 'package:travel_assistant/panel_widget.dart';

class MardinPage extends StatefulWidget {
  String? isim;
 MardinPage({ Key? key , required this.isim}) : super(key: key);

  @override
  State<MardinPage> createState() => _MardinPageState();
}

class _MardinPageState extends State<MardinPage> {
  final panelController=PanelController();

  @override
  Widget build(BuildContext context) {
   final panelHeightClosed=MediaQuery.of(context).size.height*0.12;
   final panelHeightOpen=MediaQuery.of(context).size.height*0.6;
    return Scaffold(
      drawer:NavigationDrawerWidget(isim: widget.isim,),
      appBar: AppBar(
        title: Text("Mardin"),
        centerTitle: true,
        
        
      ),
       body: SafeArea(
         child: SlidingUpPanel(
           controller: panelController,
           maxHeight: panelHeightOpen,
           minHeight: panelHeightClosed,
           parallaxEnabled: true,
           parallaxOffset: .5,
           body: MapWidget(latitude: 37.17822, longitude: 40.94735),
           panelBuilder: (controller)=>PanelWidget(controller: controller,panelController: panelController,isim:widget.isim,
            sehirBilgisi: '''Merhaba ${widget.isim} hoş geldin. Özellikle Efes Antik kenti'ne benzerliği ile dara Antik Kenti Güneydoğu Anadolu'nun Efesi olarak bilinmektedir. Birçok tarihi eser sahibi olan bu büyük Antik Kent içerisinde hala önemli kalıntılar çıkarılmaya devam ediyor. Önemli bir kısmı günümüze ulaşmış olan dara Antik Kenti Bu yüzden ziyaret edilmesi gereken en önemli kültürel zenginlikler içerisinde yer alıyor. Daha çok bölgeyi korumak amaçlı savunma kenti olarak kurulmuş olan dara Antik Kenti, ziyaret edenler için muhteşem bir tarihi gezi imkanı tanımaktadır.

Dara Antik Kenti Tarihi

Dara Antik Kenti Romalılar tarafından bölge sınırlarını korumak amaçlı yapılmış bir tarihi kenttir. Yukarı mezopotamya'nın en önemli kentleri arasında yer alan dara Antik Kenti, 505 yılında Doğu Roma İmparatorluğu'nu Sasanilere karşı korumak amaçlı yapılmıştır. Diğer bir değişle Askeri Garnizon kenti olarak da dile getirmek mümkün. Bir kaya içine kurulmuş olan bu antik kentin çevresinde 4 kilometre surlar yer almaktadır. Üstelik geç roma dönemine kadar uzanan mağara evleri de yapı içerisinde bulunmaktadır.

          ''',
            sehirBaslik: "DARA ANTİK KENTİ",
            sehirAltBaslik: "Dara Antik Kenti Hakkında",
            resimUrl: [
              'assets/images/mardin/1.jpg',
              'assets/images/mardin/2.jpg',
              'assets/images/mardin/3.jpg',

            ],
           ),
           borderRadius: BorderRadius.vertical(top: Radius.circular(18.r)),
         ),
       ),
    );
  }
}