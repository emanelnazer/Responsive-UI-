import 'package:flutter/material.dart';

class PersonImage extends StatelessWidget {
 PersonImage({Key? key,required this.imageurl,required this.height,required this.width}) : super(key: key);
  late String imageurl;
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    return  Hero(
      tag:imageurl ,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(image: NetworkImage(imageurl),fit:BoxFit.cover)),),
    );
  }
}
