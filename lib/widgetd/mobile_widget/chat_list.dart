import 'package:flutter/material.dart';
import 'package:responsive_whatsapp/constant/data.dart';
import 'package:responsive_whatsapp/screens/mobile_chat_screen.dart';
import 'package:responsive_whatsapp/theme/theme_mode.dart';
import 'package:responsive_whatsapp/widgetd/mobile_widget/person_image.dart';
import 'package:responsive_whatsapp/widgetd/mobile_widget/widget_name.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(itemCount:dumyData.length,itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return MobileChatScreen(imageUrl: dumyData[index]['image'].toString(), Personname: dumyData[index]['first_name'].toString(),);
            }));
          },
          title: PersonName(personName:dumyData[index]['first_name'].toString()),
          subtitle: Text(dumyData[index]['message'].toString(),style: messageStyle,maxLines: 1,),
          leading:PersonImage(imageurl: dumyData[index]['image'].toString(),
          height: 60,
            width: 60,
          ),
        trailing: Column(
          children: [
            Text(dumyData[index]['time'].toString(),style: textStyle,),
            CircleAvatar(
              radius: 12,
              backgroundColor: Colors.teal,
              child: Text(dumyData[index]['real'].toString(),style: textStyle,) ,),
          ],
        ),
        ),
      );
    },);
  }
}
