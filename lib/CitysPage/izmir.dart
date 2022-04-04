import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travel_assistant/mapsWidget.dart';
import 'package:travel_assistant/nav_drawer_widget.dart';
import 'package:travel_assistant/panel_widget.dart';

class IzmirPage extends StatefulWidget {
  String? isim;
 IzmirPage({ Key? key , required this.isim}) : super(key: key);

  @override
  State<IzmirPage> createState() => _IzmirPageState();
}

class _IzmirPageState extends State<IzmirPage> {
  final panelController=PanelController();

  @override
  Widget build(BuildContext context) {
   final panelHeightClosed=MediaQuery.of(context).size.height*0.12;
   final panelHeightOpen=MediaQuery.of(context).size.height*0.6;
    return Scaffold(
      drawer:NavigationDrawerWidget(isim: widget.isim,),
      appBar: AppBar(
        title: Text("İzmir"),
        centerTitle: true,
        
        
      ),
       body: SafeArea(
         child: SlidingUpPanel(
           controller: panelController,
           maxHeight: panelHeightOpen,
           minHeight: panelHeightClosed,
           parallaxEnabled: true,
           parallaxOffset: .5,
           body: MapWidget(latitude: 38.41904, longitude: 27.12885),
           panelBuilder: (controller)=>PanelWidget(controller: controller,panelController: panelController,isim:widget.isim,
            sehirBilgisi: '''Merhaba ${widget.isim} hoş geldin.  Konak", İzmir'de sadece bir semt ya da mahalle adı olmayıp özellikle son iki yüzyıldır şehrin merkezi olmuştur. Bu nedenle Konak Meydanı ve çevresine "İzmir'in Kalbi" diyebiliriz. Meydan ve çevresini oluşturan alanın en önemli yapısı hiç kuşkusuz İzmir Hükümet Konağı'dır. Konak, ayrıca Saat Kulesi, Belediye Sarayı, Vapur İskelesi, Yalı Camii, Ankara Palas, Anafartalar Caddesi girişi, Askeri Kıraathane, Milli Kütüphane ve özellikle Sarı Kışla başta olmak üzere günümüze kadar ulaşabilmiş ya da geçmişin anıları içinde kalmış birçok mekânı barındırmış bir semttir ve iş merkezi yoğunluğu hem de hemen tüm İzmir'den varılan/ulaşılan son nokta olma ile hemen tüm İzmir'e ulaşmak için yola çıkılan ilk nokta olma özelliğini uzun yıllar koruyarak İzmir'in merkezi olmayı başarmıştır. İzmir kadar büyük bir başka kentte hemen tüm yoğunluğun Konak gibi bir tek alana yığıldığı bir başka örnek bulmak çok zordur.
          
Tüm bunların yanı sıra, denizin hemen dibinde yer alması, hatta denize güzel bir bağlantı yolu ile bağlı olması bir kez daha hayranlık uyandırıyor. Yalnız içinizden, ‘keşke şurada bir ağaç gölgesi olsa' diye de iç geçiriyorsunuz. Ancak her şeye rağmen, gökyüzü ve denizin oluşturduğu mavi dansı izlemek için bile gidilir Konak Meydanı'na. Konak, yakın zamana kadar İzmir'in bir numaralı ticaret merkezi Kemeraltı ve çevresinin ana giriş-çıkış kapısıdır. Tüm şehir içi ulaşım araçlarının her yöne başlangıç noktası Konak Meydanıdır.

Konak Meydanı'nın tarihi içinde yaşadığı en önemli iki gün 15 Mayıs ve 9 Eylül günleridir. İzmir'in tarihte yaşadığı en büyük kâbus olan ve 15 Mayıs 1919 Perşembe günü Yunan askerinin Kordon'a ayak basıp Konak Meydanı'na yürüyüp öncelikle Hükümet Konağı ve Kışla'yı ele geçirmesiyle başlayan "İşgal", 9 Eylül 1922 Cumartesi günü Türk Askeri'nin Konak Meydanı'nda Kışla ve Hükümet Konağı'na bayrak çekmesiyle sona erer.

          ''',
            sehirBaslik: "KONAK MEYDANI",
            sehirAltBaslik: "Konak Meydanı Hakkında",
            resimUrl: [
             'assets/images/izmir/1.png',
             'assets/images/izmir/2.jpg',
             'assets/images/izmir/3.jpg',
            ],
           ),
           borderRadius: BorderRadius.vertical(top: Radius.circular(18.r)),
         ),
       ),
    );
  }
}