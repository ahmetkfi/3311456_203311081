import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travel_assistant/mapsWidget.dart';
import 'package:travel_assistant/nav_drawer_widget.dart';
import 'package:travel_assistant/panel_widget.dart';

class CanakkalePage extends StatefulWidget {
  String? isim;
 CanakkalePage({ Key? key , required this.isim}) : super(key: key);

  @override
  State<CanakkalePage> createState() => _CanakkalePageState();
}

class _CanakkalePageState extends State<CanakkalePage> {
  final panelController=PanelController();

  @override
  Widget build(BuildContext context) {
   final panelHeightClosed=MediaQuery.of(context).size.height*0.12;
   final panelHeightOpen=MediaQuery.of(context).size.height*0.6;
    return Scaffold(
      drawer:NavigationDrawerWidget(isim: widget.isim,),
      appBar: AppBar(
        title: Text("Çanakkale"),
        centerTitle: true,
        
        
      ),
       body: SafeArea(
         child: SlidingUpPanel(
           controller: panelController,
           maxHeight: panelHeightOpen,
           minHeight: panelHeightClosed,
           parallaxEnabled: true,
           parallaxOffset: .5,
           body: MapWidget(latitude: 40.14797, longitude: 26.37987),
           panelBuilder: (controller)=>PanelWidget(controller: controller,panelController: panelController,isim:widget.isim,
            sehirBilgisi: '''Merhaba ${widget.isim} hoş geldin. Evliya Çelebi, İstanbul'un fethinden hemen sonra yapıldığı tahmin edilen kalenin fetihten önce 856'da (1452) inşa edildiğini belirtir. Dönemin tarihçilerinden Tursun Bey, İstanbul'un fethinin ardından boğazın en dar yerinde Eceovası denilen mevkide karşılıklı iki kale yapıldığını, birine Kilîdü'l-bahr, diğerine Sultâniye adının verildiğini ve bu kalelere toplar konulduğunu yazar. Kritovulos ise (Kiritoboulos) 867 (1463) yılı olaylarından bahsederken Gelibolu ve Bolayır valisi ve donanma kumandanı Yâkub Bey'in bu kalelerin inşasıyla görevlendirildiğini, 869 (1464-65) yılı olaylarını anlatırken de inşaatın tamamlanmış olduğunu belirtir.

XVI. yüzyıl başlarında Pîrî Reis eserinde, Marmara'dan çıkan gemilerin boğazdan geçiş iznini Rumeli tarafındaki kaleden aldıkları için buradaki kaleye Bahr-i Kilîd dendiğini, fakat çok akıntılı ve derin olduğundan kalenin önünde büyük gemilerin demir atmasının mümkün bulunmadığını belirterek her iki kalenin de basit krokilerini ve durumlarını gösteren bir harita çizmiştir.

Kilitbahir Kalesi'nin Kanûnî Sultan Süleyman döneminde tamir edilerek genişletildiği, bu sırada yapılmış olan kulenin kapısı üstüne yerleştirilen iki satır halindeki iki beyitli ve 948 (1541) tarihli kitâbeden anlaşılmaktadır. 1311 (1893-94) tarihli ikinci bir kitâbe çevre duvarının kapısı üzerindedir. Ayverdi, ayrıca yerde bulduğu üçüncü bir kitâbenin tarihini 898 (1493) olarak tesbit ederek bunun bir çeşmeye ait olabileceğini ileri sürer.

Evliya Çelebi, 1069'da (1659) gördüğü Kilitbahir Kalesi'nin içinde kiremit örtülü evlerden oluşan bir mahalle ile Hünkâr Camii adını verdiği bir camiden bahsetmektedir. Ayrıca burada buğday ambarları ve cephanelik olduğunu söyledikten sonra han, hamam, çarşısının bulunmadığını, kıyıya Mora yarımadasındaki Modon ve Koron kalelerinden getirilmiş topların yerleştirildiğini, Kanûnî devrine ait daha başka topların da mevzilendiğini bildirir. Ona göre bu toplardan bir tanesi padişah baştardesi geçerken onu selâmlamak üzere ateşlendiğinde patlayarak hisar içindeki evlerin bazılarını tahrip etmiştir. Kalenin deniz kıyısında altmış iki top, içeride ise kırk top bulunmaktadır. İlki Fransız Jerome Mourand olmak üzere İstanbul'a deniz yoluyla gelen veya buradan deniz yoluyla ayrılan yabancı seyyahların seyahatnâmelerinde bu kalelerden az veya çok bahsedilmekte ve bazılarında da gravürlerine rastlanmaktadır.

Kale iki bölümden oluşmuştur. Bunlardan yüksek ve gösterişli bir mimarisi olan iç kale askerî mimaride başka bir benzerine rastlanmayan bir şekilde üç yapraklı yonca biçimindedir. Bunun etrafında daha alçak bir duvar halinde ikinci tahkimat bulunmaktadır. Kanûnî Sultan Süleyman devrinde yapılan ilâve ile bu duvar güneye doğru uzatılmış, ucunda yuvarlak bir kule yapılmıştır. Kalenin uzunluğu 220 m., eni ise 120 metredir. Sahildeki bazı duvarlar yıkılmış durumdadır. Kalenin dışında kara tarafında yaklaşık 10 m. genişliğinde duvarları şevli bir hendeğin varlığı bilinir. Biri deniz tarafında olmakla beraber evvelce üç kapısı olduğu tesbit edilmiştir. En uçtaki dış çapı 21 m. olan yuvarlak kule duvar tekniği bakımından çok itinalıdır. İçinde kubbeli bir mekân, önünde ise taş korkuluklu genişçe bir sahanlık bulunmaktadır. Bunun ve diğer kulelerin üstlerinde kurşun kaplı ahşap çatılı külâhların olduğu bilinmekteyse de XVIII. yüzyıldan itibaren bunlar ortadan kalkmıştır. Yonca planlı ana kulenin 18 metreye kadar yükseldiği ölçülmüştür. Ana giriş deniz tarafından olup iki yandan rampalıdır. Üçlü yoncanın birleştiği yerde bir kule yükselir. Yonca yapraklarının her birinin içleri yuvarlak birer avlu halindedir. Bu yuvarlak avlulardan birinin ortasında yuvarlak diğer bir avlu bulunmaktadır. Orta kuledeki mazgallardan bu avlulara kolayca atış yapma imkânı vardır. Ortadaki kule yoncanın üç yaprağının ortasında üçgen bir plana sahiptir. Her bir cephesi 20 m. kadar uzunlukta olan duvarları düz birer satıh halinde olmayıp kavislidir. Yüksekliği yaklaşık 30 m. olan bu kulenin içinde her biri 4 m. kadar yükseklikte yedi ahşap katın olduğu anlaşılmaktadır. İç kale duvarlarında bazı tuğla süslemelere rastlanır.

Kilitbahir Kalesi'ne dair ilk inceleme H. Högg tarafından Dresden Teknik Üniversitesi'ne tez olarak takdim edilmiş ve 1932'de kitap olarak yayımlanmıştır. İsmail Utkular'ın hazırladığı tez ise 1953'te basılmıştır. Ekrem Hakkı Ayverdi de bu konuda daha geniş bir çalışma yapmış ve yeni rölöve çizmiştir.

Kilitbahir Hisarı'nın iç kalesi, meçhul mimarının hârikulâde bir geometri bilgisine sahip olduğunu ve bunu büyük bir başarıyla uyguladığını gösterir. Denizden olduğu kadar karadan gelebilecek saldırılara dayanması düşünülmüş olan kalenin sonradan yapılan eklerle su seviyesinden gülle atabilecek toplarla güçlendirildiği de görülmektedir.

          ''',
            sehirBaslik: "KİLİTBAHİR KALESİ",
            sehirAltBaslik: "Kilitbahir Kalesi Hakkında",
            resimUrl: [
              'assets/images/çanakkale/1.jpg',
              'assets/images/çanakkale/2.jpg',
              'assets/images/çanakkale/3.jpg',
              

            ],
           ),
           borderRadius: BorderRadius.vertical(top: Radius.circular(18.r)),
         ),
       ),
    );
  }
}