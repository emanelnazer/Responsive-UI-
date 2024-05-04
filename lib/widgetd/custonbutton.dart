import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({Key? key,required this.onpress,required this.iconData}) : super(key: key);
  Function? onpress;
  IconData iconData;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed:()=>onpress,
    icon: Icon(iconData,color: Colors.white,));
  }
}
