import 'package:flutter/material.dart';
import 'package:responsive_whatsapp/screens/mobile.dart';
import 'package:responsive_whatsapp/screens/web.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(builder: (context,constrains){
      if(constrains.maxWidth>850){
        return Web();
      }else
        {
          return Mobile();
        }
    });
  }
}
