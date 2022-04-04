import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travel_assistant/mapsWidget.dart';
import 'package:travel_assistant/nav_drawer_widget.dart';
import 'package:travel_assistant/panel_widget.dart';

class MuglaPage extends StatefulWidget {
  String? isim;
 MuglaPage({ Key? key , required this.isim}) : super(key: key);

  @override
  State<MuglaPage> createState() => _MuglaPageState();
}

class _MuglaPageState extends State<MuglaPage> {
  final panelController=PanelController();

  @override
  Widget build(BuildContext context) {
   final panelHeightClosed=MediaQuery.of(context).size.height*0.12;
   final panelHeightOpen=MediaQuery.of(context).size.height*0.6;
    return Scaffold(
      drawer:NavigationDrawerWidget(isim: widget.isim,),
      appBar: AppBar(
        title: Text("Muğla"),
        centerTitle: true,
        
        
      ),
       body: SafeArea(
         child: SlidingUpPanel(
           controller: panelController,
           maxHeight: panelHeightOpen,
           minHeight: panelHeightClosed,
           parallaxEnabled: true,
           parallaxOffset: .5,
           body: MapWidget(latitude: 36.68809, longitude: 27.37440),
           panelBuilder: (controller)=>PanelWidget(controller: controller,panelController: panelController,isim:widget.isim,
            sehirBilgisi: '''Merhaba ${widget.isim} hoş geldin.Muğla'nın Datça ilçesinde oldukça fazla tarihi yapılar bulunur. Fakat bu tarihi yapılar arasında en eski olanı Knidos Antik Kentidir. Bu antik kenti gezerken pek çok tarihi yapı ile karşılaşırsınız. Burada yaklaşık 8 bin kişilik bir tiyatro bulunmaktadır. Bunun yanında Demeter mabedi ile güneş saati de Knidos Antik Kenti sınırları içerisindedir. Antik Kent içerisinde bulunan Knidos Feneri de oldukça önemli tarihi eserlerden biridir. Knidos Antik Kenti açık hava müzesi olarak ziyaretçilerini ağırlamaktadır.

Knidos Antik Kenti Tarihi

Knidos Antik Kentinin tarihi M.Ö. 13. yüzyıla kadar gitmektedir. burası M.Ö. 4. yüzyıl sonrasında önemli bir dini, kültürel ve sanat merkezi olmuştur. Bu antik kentte sağlık ile ilgili çalışmalar da oldukça gelişmiştir.

Knidos Antik Kenti döneminde önemli bir tıp merkezi olarak kullanılıyordu. Burada pek çok bilimsel araştırmalar da yapılmıştır. Bu sebeple döneminde pek çok bilim insanı tarafından da ziyaret edilmiştir.

Bu antik kent yuvarlak ve köşeli kuleleri bulunan surlar ile çevrilmiştir. Bu surların M.Ö. 4. yüzyılda yapıldığı düşünülmektedir. Akropolis içerisinde surun en sağlam duvarları yer alır. Knidos Antik kentinin surlarının dışında doğu kısımda bulunan ve uzunluğu yaklaşık 7 km olan Nekropol (mezarlık alanı) bulunmaktadır.


          ''',
            sehirBaslik: "KNİDOZ ANTİK KENTİ",
            sehirAltBaslik: "Knidoz Antik Kenti Hakkında",
            resimUrl: [
            'assets/images/muğla/1.jpg',
            'assets/images/muğla/2.jpg',
            'assets/images/muğla/3.jpeg',

            ],
           ),
           borderRadius: BorderRadius.vertical(top: Radius.circular(18.r)),
         ),
       ),
    );
  }
}