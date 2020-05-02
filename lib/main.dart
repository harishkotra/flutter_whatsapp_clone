import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/config/config.dart';
import 'package:whatsapp_clone_ui/tabs/CallsTab.dart';
import 'package:whatsapp_clone_ui/tabs/CameraTab.dart';
import 'package:whatsapp_clone_ui/tabs/ChatsTab.dart';
import 'package:whatsapp_clone_ui/tabs/StatusTab.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: primaryColor,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: primaryColor,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 4,
      initialIndex: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
          centerTitle: false,
          backgroundColor: primaryColor,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[

              Tab(
                icon: Icon(Icons.camera_alt),
              ),

              Tab(
                child: Text("CHATS"),
              ),

              Tab(
                child: Text("STATUS"),
              ),

              Tab(
                child: Text("CALLS"),
              ),

            ],
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),

            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),

          ],
        ),
        body: TabBarView(
          children: <Widget>[
            CameraTab(),
            ChatsTab(),
            StatusTab(),
            CallsTab()
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.chat),
          onPressed: () {},
          backgroundColor: primaryColor,
        ),
      ),
    );
  }
}
