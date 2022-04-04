import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travel_assistant/mapsWidget.dart';
import 'package:travel_assistant/nav_drawer_widget.dart';
import 'package:travel_assistant/panel_widget.dart';

class NevsehirPage extends StatefulWidget {
  String? isim;
 NevsehirPage({ Key? key , required this.isim}) : super(key: key);

  @override
  State<NevsehirPage> createState() => _NevsehirPageState();
}

class _NevsehirPageState extends State<NevsehirPage> {
  final panelController=PanelController();

  @override
  Widget build(BuildContext context) {
   final panelHeightClosed=MediaQuery.of(context).size.height*0.12;
   final panelHeightOpen=MediaQuery.of(context).size.height*0.6;
    return Scaffold(
      drawer:NavigationDrawerWidget(isim: widget.isim,),
      appBar: AppBar(
        title: Text("Nevşehir"),
        centerTitle: true,
        
        
      ),
       body: SafeArea(
         child: SlidingUpPanel(
           controller: panelController,
           maxHeight: panelHeightOpen,
           minHeight: panelHeightClosed,
           parallaxEnabled: true,
           parallaxOffset: .5,
           body: MapWidget(latitude: 38.61998, longitude: 34.86489),
           panelBuilder: (controller)=>PanelWidget(controller: controller,panelController: panelController,isim:widget.isim,
            sehirBilgisi: '''Merhaba ${widget.isim} hoş geldin. Kapadokya… Persler’in ifadesiyle “Güzel Atlar Ülkesi” anlamına gelen “Kappa Tuchia”. Anadolu’nun merkezinde bir konumda yer alan ve Türkiye’nin en popüler ve kendine özel turizm merkezlerinden birisi olan Kapadokya, muhteşem doğası, eşsiz güzellikteki vadileri, peri bacaları, kayalara oyulmuş yerleşim yerleri, açık hava müzeleri ve yeraltı şehirleri ile her yıl milyonlarca yerli ve yabancı turiste ev sahipliği yapıyor.

            Kapadokya’nın tarihine baktığımızda, bölgenin ilk olarak Hititler döneminde aktif olduğunu görüyoruz. Tarihi İpek Yolu güzergahında bulunması nedeniyle bölge o dönem bir nevi ticaret merkezi konumunda ve bu durum M.Ö. 12’nci yüzyılda Hititler’in yıkılmasına kadar devam ediyor.

Sonrasında ise bölgeye M.Ö. 6’ncı yüzyılda Persler, M.Ö. 332 yılında Büyük İskender zamanında Kapadokya Krallığı ve daha sonrasında da M.S. 17 yılına kadar Roma İmparatorluğu hüküm sürüyor. M.S. 17 yılında son Kapadokya Kralı öldüğünde ise bölge bir Roma eyaleti oluyor.

Kapadokya bölegsi M.S. 3’üncü yüzyılda, buraya yerleşen Hristiyan halk ile birlikte bölge bir eğitim, din ve düşünce merkezi haline geliyor. Ancak M.S. 303-308 yılları arasında Roma İmparatorluğu’nun bölge halkına baskısı artıyor ve halk bu baskı, zulüm ve istiladan saklanma üzere derin vadilerde dışarıdan görünmeyecek şekilde kayalarak oyulmuş sığınak ve yerleşim yerleri yapıyor.

Yine M.S. 11’inci ve 12’nci yüzyıllarda önce bölgede Arap akınları hakim oluyor ve sonrasında bölgede Selçulular hakimiyet kuruyor. Daha sonraki dönemlerde ise, en son Osmanlı İmparatorluğu döneminde bölgede huzur hakim oluyor ve Lozan Antlaşması sonrasında 1924-1926 yılları arasında buradaki Hristiyan halk göç ediyor ve Kapadokya’yı terk ediyor.

          ''',
            sehirBaslik: "KAPADOKYA",
            sehirAltBaslik: "Kapadokya Hakkında",
            resimUrl: [
              'assets/images/nevşehir/1.jpg',
              'assets/images/nevşehir/2.jpg',
              'assets/images/nevşehir/3.jpg',

            ],
           ),
           borderRadius: BorderRadius.vertical(top: Radius.circular(18.r)),
         ),
       ),
    );
  }
}