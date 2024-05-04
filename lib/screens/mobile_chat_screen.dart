import 'package:flutter/material.dart';
import 'package:responsive_whatsapp/constant/chats.dart';
import 'package:responsive_whatsapp/theme/theme_mode.dart';
import 'package:responsive_whatsapp/widgetd/custonbutton.dart';
import 'package:responsive_whatsapp/widgetd/mobile_widget/person_image.dart';
import 'package:responsive_whatsapp/widgetd/mobile_widget/widget_name.dart';

class MobileChatScreen extends StatelessWidget {
  MobileChatScreen({Key? key,required this.Personname,required this.imageUrl}) : super(key: key);
String Personname;
String imageUrl;
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: appBarColor,
          title: Row(
            children: [
               Padding(
                 padding:EdgeInsets.only(top:10.0,right: 8),
                 child: PersonImage(imageurl: imageUrl,height: 50,width: 50,),
               ),
               PersonName(personName: Personname),
            ],
          ),
          actions: [
            CustomIconButton(iconData: Icons.call, onpress: null,),
            CustomIconButton(iconData: Icons.more_vert, onpress: null,),

          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemCount:10,itemBuilder: (context,index){
              return  Column(
                crossAxisAlignment:chats[index]['isMe']==false?CrossAxisAlignment.start:CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration:BoxDecoration(
                        color: chats[index]['isMe']==false?Colors.grey:Colors.teal,
                        borderRadius: BorderRadius.only(topLeft:chats[index]['isMe']==false?
                        Radius.circular(25):Radius.circular(0))
                    ),
                    margin: EdgeInsets.all(10),
                    padding:EdgeInsets.all(15),
                    width:width*0.35,
                    height:height*0.1,
                    child:chats[index]['isMe']==false?
                    Text(chats[index]['him']):
                    Text(chats[index]['me']),

                  ),
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}
