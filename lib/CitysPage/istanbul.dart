import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travel_assistant/mapsWidget.dart';
import 'package:travel_assistant/nav_drawer_widget.dart';
import 'package:travel_assistant/panel_widget.dart';

class IstanbulPage extends StatefulWidget {
  String? isim;
 IstanbulPage({ Key? key , required this.isim}) : super(key: key);

  @override
  State<IstanbulPage> createState() => _IstanbulPageState();
}

class _IstanbulPageState extends State<IstanbulPage> {
  final panelController=PanelController();

  @override
  Widget build(BuildContext context) {
   final panelHeightClosed=MediaQuery.of(context).size.height*0.12;
   final panelHeightOpen=MediaQuery.of(context).size.height*0.6;
    return Scaffold(
      drawer: NavigationDrawerWidget(isim: widget.isim),
      appBar: AppBar(
        title: Text("İstanbul"),
        centerTitle: true,
        
      ),
       body: SlidingUpPanel(
         controller: panelController,
         maxHeight: panelHeightOpen,
         minHeight: panelHeightClosed,
         parallaxEnabled: true,
         parallaxOffset: .5,
         body: MapWidget(latitude: 41.00878 , longitude: 28.98019),
         panelBuilder: (controller)=>PanelWidget(controller: controller,panelController: panelController,isim:widget.isim,
          sehirBilgisi: '''Merhaba ${widget.isim} hoş geldin.  İstanbul’un simgesi haline gelen Ayasofya Camii (Ayasofya-i Kebîr Câmi-i Şerîfi), tarihte kilise, müze ve cami olarak kullanıldı.Pek çok tarihi olaya şahit olan bu yapı hakkında tüm detaylara yazımızda yer verdik.
          
Ayasofya, Doğu Roma İmparatorluğu tarafından İstanbul’da yapılmış olan en büyük kilisedir. Kilisenin aynı yerde üç kere inşa edilmesi dikkat çekici bir özelliğidir.İmparator Konstantios ilk kiliseyi 360 yılında yaptırmıştır. 404 yılında çıkan halk ayaklanması ile yakılmış ve sonucunda yıkılmıştır. Günümüz itibarı ile ilk kiliseye ait bir kalıntı görülmemektedir.İmparator II. Theodosios 415 yılında kiliseyi yeniden inşa ettirmiştir. İnşa edilen ikinci kilise, ahşap çatı ile kaplı anıtsal bir girişi bulunan eser olarak inşa edilmiştir. Tarihe Nika İsyanı olarak geçmiş olan halk ayaklanması neticesinde, kilise 532 yılında ikinci defa yıkıma uğramıştır.

1453 yılında Fatih Sultan Mehmet’in İstanbul’u fethetmesi ile Ayasofya camiye çevrilmiştir. Fetihten sonra yapı güçlendirilmiş, Mimar Sinan tarafından yapılan minareler yapı destekleyici özelli ile binanın koruma altına alınmasına katkı sağlamıştır. Osmanlı döneminde, Ayasofya’nın içerisine, minber, mihraplar, vaaz kürsüsü, müezzin mahfilleri ile maksureler yapılmıştır. Kanuni Sultan Süleyman, Budin seferi dönüşünde yanında getirdiği bronz kandilleri Ayasofya Camine hediye etmiştir.



          ''',
          sehirBaslik: "AYASOFYA",
          sehirAltBaslik: "Ayasofya Hakkında",
          resimUrl: [
           'assets/images/istanbul/1.jpg',
           'assets/images/istanbul/2.jpg',
           'assets/images/istanbul/3.jpg',
          ],
         ),
         borderRadius: BorderRadius.vertical(top: Radius.circular(18.r)),
       ),
    );
  }
}