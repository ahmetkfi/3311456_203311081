import 'package:flutter/material.dart';
//sayfalar arası geçiş fonksiyonu
void route(Widget targetRoute,BuildContext context){
  Navigator.push(context, 
    MaterialPageRoute(builder: 
    ((context) => targetRoute)
    ),
  );
}
