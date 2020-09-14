import 'package:flutter/material.dart';
import 'package:whatsapp_homepage/pages/Call_Screen.dart';
import 'package:whatsapp_homepage/pages/Camera_Screen.dart';
import 'package:whatsapp_homepage/pages/Chat_Screen.dart';
import 'package:whatsapp_homepage/pages/Status_Screen.dart';

class WhatsApp extends StatefulWidget {
  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
          ),
          Icon(Icons.more_vert),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0))
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.message),
        onPressed: () => print("open chats"),
      ),
    );
  }
}
