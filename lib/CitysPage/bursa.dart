import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travel_assistant/mapsWidget.dart';
import 'package:travel_assistant/nav_drawer_widget.dart';
import 'package:travel_assistant/panel_widget.dart';

class BursaPage extends StatefulWidget {
  String? isim;
 BursaPage({ Key? key , required this.isim}) : super(key: key);

  @override
  State<BursaPage> createState() => _BursaPageState();
}

class _BursaPageState extends State<BursaPage> {
  final panelController=PanelController();

  @override
  Widget build(BuildContext context) {
   final panelHeightClosed=MediaQuery.of(context).size.height*0.12;
   final panelHeightOpen=MediaQuery.of(context).size.height*0.6;
    return Scaffold(
      drawer:NavigationDrawerWidget(isim: widget.isim,),
      appBar: AppBar(
        title: Text("Bursa"),
        centerTitle: true,
        
        
      ),
       body: SafeArea(
         child: SlidingUpPanel(
           controller: panelController,
           maxHeight: panelHeightOpen,
           minHeight: panelHeightClosed,
           parallaxEnabled: true,
           parallaxOffset: .5,
           body: MapWidget(latitude: 40.18250, longitude: 29.07088),
           panelBuilder: (controller)=>PanelWidget(controller: controller,panelController: panelController,isim:widget.isim,
            sehirBilgisi: '''Merhaba ${widget.isim} hoş geldin. II. Murad döneminde, 1442 yılında, Ali oğlu Hoca Muslihuddin tarafından inşa ettirilmiştir. Hoca Muslihuddin Azerbaycan’dan aldığı ipeği İtalyan tüccarlara satan, dönemin önemli tüccarlarındandır. Bursa’nın 15. Yüzyılda önemli bir ticaret merkezi olması sürecinde rol oynayan imar faaliyetleri kapsamında tüccarların da ticaret amaçlı yapıları inşa ettirdikleri bilinmektedir. Üstündeki arastası ve köprü ana yapısı içindeki ahır ve depoları ile inşa edilen Irgandı Köprüsü bunlardan biridir. Köprünün mimarı Abdullah oğlu Timurtaş olarak bilinmektedir.

İtalya’da Vecchio ve Rialto Köprüleri, Bulgaristan’da Osma Köprüsü ile birlikte dünyadaki dört çarşılı köprüden biridir.

Gökdere üzerinde yer alan ve şehrin merkezini doğusuna bağlayan köprülerden yukarıdan aşağıya doğru üçüncüsüdür.

Köprünün ilk yapıldığı dönemde kagir olduğu, her iki tarafta 16 bölüm olmak üzere, toplam 31 dükkan, 1 mescit, ayaklarında ise depo ve ahır bölümlerinin bulunduğu bilinmektedir.

Günümüzde köprü ana yapısı 16 metre açıklığında ve 11 metre genişliğinde bir kemer den oluşmakta olup, kemerin iki yanında tonozla örtülmüş iç mekanlar bulunmaktadır. Çarşıdaki 18 dükkan ahşap iskelet sistemle yapılmış olup, payandalarla desteklenen cumbalarla Gökdere’ye doğru uzanmaktadırlar ve bazılarının altında depoları bulunmaktadır.

Irgandı Köprüsü 19. yüzyılın ikinci yarısında ahşap dükkanların yan yana dizildiği üstü açık bir çarşı haline gelmiştir. 1922’de işgal kuvvetleri Bursa'yı terkederken köprüyü bombalayarak yıkmışlardır. 1949’da betonarme olarak çarşısız hali tekrar inşa edilen köprünün 2004 yılında rekonstrüksiyonu gerçekleştirilerek orjinal haline döndürülmüştür.

          ''',
            sehirBaslik: "IRGANDI KÖPRÜSÜ",
            sehirAltBaslik: "Irgandı Köprüsü Hakkında",
            resimUrl: [
             'assets/images/bursa/1.jpg',
             'assets/images/bursa/2.jpg',
              'assets/images/bursa/3.jpg',

            ],
           ),
           borderRadius: BorderRadius.vertical(top: Radius.circular(18.r)),
         ),
       ),
    );
  }
}