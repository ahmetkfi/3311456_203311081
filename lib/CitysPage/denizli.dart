import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travel_assistant/mapsWidget.dart';
import 'package:travel_assistant/nav_drawer_widget.dart';
import 'package:travel_assistant/panel_widget.dart';

class DenizliPage extends StatefulWidget {
  String? isim;
 DenizliPage({ Key? key , required this.isim}) : super(key: key);

  @override
  State<DenizliPage> createState() => _DenizliPageState();
}

class _DenizliPageState extends State<DenizliPage> {
  final panelController=PanelController();

  @override
  Widget build(BuildContext context) {
   final panelHeightClosed=MediaQuery.of(context).size.height*0.12;
   final panelHeightOpen=MediaQuery.of(context).size.height*0.6;
    return Scaffold(
      drawer:NavigationDrawerWidget(isim: widget.isim,),
      appBar: AppBar(
        title: Text("Denizli"),
        centerTitle: true,
        
        
      ),
       body: SafeArea(
         child: SlidingUpPanel(
           controller: panelController,
           maxHeight: panelHeightOpen,
           minHeight: panelHeightClosed,
           parallaxEnabled: true,
           parallaxOffset: .5,
           body: MapWidget(latitude: 37.92391, longitude: 29.12256),
           panelBuilder: (controller)=>PanelWidget(controller: controller,panelController: panelController,isim:widget.isim,
            sehirBilgisi: '''Merhaba ${widget.isim} hoş geldin.Pamukkale travertenleri, 400 bin yıl önce bir dizi depremle Büyük Menderes havzasında termal suların oluşturduğu bir görsel şölen. Denizli‘de yer alan Pamukkale, her yıl milyonlarca insanın ziyaret ettiği kar beyazı travertenleri, şifalı termal suları, büyüleyici Kleopatra Havuzu, Hierapolis Antik Kenti ve görkemli antik tiyatrosu ile ünlü.

Pamukkale’de 1000 yıldır kaplıca hizmet veren bu doğa şaheserinin terasları, kaplıca suyundan çökelmiş karbonat minerallerinden oluşuyor. Dünyada hem doğal hem kültürel özellikleriyle UNESCO Dünya Mirası Listesine girmiş 29 yerden biri aynı zamanda. Kapadokya ile birlikte yabancıların Türkiye‘de en çok görmek istedikleri doğal güzelliklerin başında.

Pamukkale Travertenleri, kaynak sulardan ve traverten teraslı tepelerden meydana geliyor. Çökelez Dağının eteklerinde yer alan ve ovadan 100–150 metre yükseklikte uzanan bu terasta yaklaşık 6 km uzaklıkta Pamukkale’yi var eden, travertenlerin oluşumunu sağlayan termal kaynaklar yer alıyor.

Travertenler Kadı Deresi yakınındaki Domuzçukuru adı verilen alandan başlayarak kuzeydeki Nekropol’ün son mezarının yanından akan Çaltık Deresine kadar uzanıyor. 50 metre yüksekliğinde yaklaşık 3 km uzunluğunda ve 250–600 metre genişliğindeki bu travertenlerin oluşumunu termal sular sağlıyor.

          ''',
            sehirBaslik: "PAMUKKALE",
            sehirAltBaslik: "Pamukkale Travertenleri Hakkında",
            resimUrl: [
                'assets/images/denizli/1.jpg',
                'assets/images/denizli/2.jpg',
                'assets/images/denizli/3.jpg',
            ],
           ),
           borderRadius: BorderRadius.vertical(top: Radius.circular(18.r)),
         ),
       ),
    );
  }
}