import 'package:flutter/material.dart';
import 'package:responsive_whatsapp/constant/data.dart';

import '../../theme/theme_mode.dart';

class PersonName extends StatelessWidget {
   PersonName({Key? key,required this.personName}) : super(key: key);
 late String personName;
  @override
  Widget build(BuildContext context) {
    return Text(personName,style:textStyle ,);
  }
}
