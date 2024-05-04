import 'package:flutter/material.dart';
import 'package:responsive_whatsapp/theme/theme_mode.dart';
import 'package:responsive_whatsapp/widgetd/mobile_widget/chat_list.dart';

class Mobile extends StatefulWidget {
  Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
 int currentindex=0;

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: Text("WhatsApp",style: TextStyle(),),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          ],
          bottom: TabBar(
            onTap: (index){
               setState((){
                 currentindex=index;
               });
              },
            tabs: [
            Text("Chats"),
            Text("Stats"),
            Text("Calls"),],
            indicatorColor: Colors.teal,
            indicatorWeight: 4,
            labelStyle: tabtextStyle,
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: ChatList(),
            ),
            Text("Stats"),
            Text("Calls")
          ],
        ),
        floatingActionButton: currentindex==0?FloatingActionButton(onPressed: null,child: Icon(Icons.chat),):null
      ),
    );
  }
}
