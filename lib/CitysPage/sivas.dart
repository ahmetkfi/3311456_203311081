import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travel_assistant/mapsWidget.dart';
import 'package:travel_assistant/nav_drawer_widget.dart';
import 'package:travel_assistant/panel_widget.dart';

class SivasPage extends StatefulWidget {
  String? isim;
 SivasPage({ Key? key , required this.isim}) : super(key: key);

  @override
  State<SivasPage> createState() => _SivasPageState();
}

class _SivasPageState extends State<SivasPage> {
  final panelController=PanelController();

  @override
  Widget build(BuildContext context) {
   final panelHeightClosed=MediaQuery.of(context).size.height*0.12;
   final panelHeightOpen=MediaQuery.of(context).size.height*0.6;
    return Scaffold(
      drawer:NavigationDrawerWidget(isim: widget.isim,),
      appBar: AppBar(
        title: Text("Sivas"),
        centerTitle: true,
        
        
      ),
       body: SafeArea(
         child: SlidingUpPanel(
           controller: panelController,
           maxHeight: panelHeightOpen,
           minHeight: panelHeightClosed,
           parallaxEnabled: true,
           parallaxOffset: .5,
           body: MapWidget(latitude: 39.75041, longitude: 37.01336),
           panelBuilder: (controller)=>PanelWidget(controller: controller,panelController: panelController,isim:widget.isim,
            sehirBilgisi: '''Merhaba ${widget.isim} hoş geldin.  Sivas Atatürk Kongre Müzesi Mustafa Kemal Atatürk ve Heyet-i Temsiliye tarafından 2 Eylül-18 Aralık 1919 tarihleri arasında “Milli Mücadele Karargâhı” olarak kullanılmıştır.Sivas Müzesi'nde bulunan kitabesine göre bina 5 Ekim 1892 tarihinde Sivas Valisi Mazlum Paşazade Mehmet Memduh Bey tarafından Mülki İdadi Binası olarak yaptırılmıştır.
 
XIX. yüzyıl Geç Osmanlı Dönemi sivil mimarisinin güzel örneklerinden biri olan yapı üç katlıdır. İç avlulu binanın dış cephelerinde taş, iç mekânlarında ise ahşap malzeme kullanılmıştır.
 
Mustafa Kemal Atatürk ve Heyet-i Temsiliye'nin bir süre karargâh olarak kullandıkları ve o tarihlerde Sultani (lise) olan bina; Sivas Kongresi'nin 4-12 Eylül tarihleri arasında burada toplanması ile tarihsel bir kimlik kazanmıştır.1981 yılına kadar okul olarak kullanılan bina onarımı, teşhir ve tanzimi gerçekleştirildikten sonra 1990 yılında müze olarak ziyarete açılmıştır.
 
Sivas Atatürk Kongre Müzesi’nde Tarihi Kongre Salonu ve Atatürk'e ait çalışma ve dinlenme odası, kongrenin yapıldığı günlerdeki hali ile muhafaza edilmektedir. Müzede kongre öncesindeki olayların, Mustafa Kemal Atatürk'ün kongre hazırlığı ile ilgili tamimlerinin ve bildirilerinin sergilendiği salon; o zamanki muhaberenin temelini oluşturan telgraf odası; Sivas Kongresi ile ilgili tutanakların yer aldığı salon; merkezi Sivas'ta kurulmuş olan Anadolu Kadınları Müdafa-i Vatan Cemiyeti'ne ait bildiriler ve haberleri içeren belgeler ile İrade-i Milliye Gazetesi'nin basıldığı matbaa makinası ve bu gazeteye ait nüshaların sergilendiği salonlar bulunmaktadır.

Müzede ayrıca Sivas Kongresi sırasında ve sonrasında Sivas'ta alınan tüm kararlara ait belgeler; Cumhurbaşkanlığı Köşkü Atatürk Özel Arşivi, Genelkurmay Başkanlığı Askeri Tarih Komisyonu ve Ateşe Özel Arşivi, Atatürk Araştırma Merkezi Başkanlığı arşivlerindeki belgelerin örnekleri müzede sergilenmektedir.

          ''',
            sehirBaslik: "KONGRE MÜZESİ",
            sehirAltBaslik: "Atatürk Kongre Müzesi Hakkında",
            resimUrl: [
              'assets/images/sivas/1.jpg',
              'assets/images/sivas/2.jpg',
              'assets/images/sivas/3.jpg',

            ],
           ),
           borderRadius: BorderRadius.vertical(top: Radius.circular(18.r)),
         ),
       ),
    );
  }
}