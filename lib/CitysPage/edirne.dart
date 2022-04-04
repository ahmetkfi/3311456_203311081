import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travel_assistant/mapsWidget.dart';
import 'package:travel_assistant/nav_drawer_widget.dart';
import 'package:travel_assistant/panel_widget.dart';

class EdirnePage extends StatefulWidget {
  String? isim;
 EdirnePage({ Key? key , required this.isim}) : super(key: key);

  @override
  State<EdirnePage> createState() => _EdirnePageState();
}

class _EdirnePageState extends State<EdirnePage> {
  final panelController=PanelController();

  @override
  Widget build(BuildContext context) {
   final panelHeightClosed=MediaQuery.of(context).size.height*0.12;
   final panelHeightOpen=MediaQuery.of(context).size.height*0.6;
    return Scaffold(
      drawer:NavigationDrawerWidget(isim: widget.isim,),
      appBar: AppBar(
        title: Text("Edirne"),
        centerTitle: true,
        
        
      ),
       body: SafeArea(
         child: SlidingUpPanel(
           controller: panelController,
           maxHeight: panelHeightOpen,
           minHeight: panelHeightClosed,
           parallaxEnabled: true,
           parallaxOffset: .5,
           body: MapWidget(latitude: 40.72369, longitude: 26.08163),
           panelBuilder: (controller)=>PanelWidget(controller: controller,panelController: panelController,isim:widget.isim,
            sehirBilgisi: '''Merhaba ${widget.isim} hoş geldin.Ana girişi doğuda olan Kaleye, kuzey ve doğudan olmak üzere iki kapıdan girilir. Biçimleri ve planları birbirinden farklı 15 kule ile desteklenen sur yer yer 3 metre genişliğe yaklaşmakta yüksekliği 25 metreyi ulaşmaktadır. Denize bakan tarafta iki çok köşeli kulesi bulunmaktadır. Bunlardan sağdaki günümüze ulaşamamıştır.

Batıdan uzanan sur duvarı ise içeriye doğru bir eğim çizerek güneyden gelen duvarla birleşmektedir. Böylece kalenin bu bölümü yarım kubbe biçiminde olup, Meriç Irmağı’ndan gelecek tehlikelere karşı savunmayı güçlendirmektedir. Kuzeydoğu köşesindeki köşeli kule batı yönünde yine köşeli bir kuleyle çıkıntı yapmaktadır. 12. yüzyılda onarılan kalenin yapı malzemesini kesme taş, tuğla ve antik mimari parçalar meydana getirmiştir. Kentin akropolünü oluşturan bugünkü kale içinde yapılan arkeolojik kazılarda ele geçen ve M.Ö.4. ve 3. bin yıla tarihlenen çömlek kalıntıları, buradaki yerleşimin Kalkolitik çağa kadar gittiğini kanıtlamaktadır.


          ''',
            sehirBaslik: "ENEZ KALESİ",
            sehirAltBaslik: "Enez Kalesi Hakkında",
            resimUrl: [
              'assets/images/edirne/1.jpg',
              'assets/images/edirne/2.jpg',
              'assets/images/edirne/3.jpg',

            ],
           ),
           borderRadius: BorderRadius.vertical(top: Radius.circular(18.r)),
         ),
       ),
    );
  }
}