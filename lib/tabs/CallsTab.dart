import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/config/config.dart';
import 'package:whatsapp_clone_ui/models/ChatListItem.dart';

class CallsTab extends StatelessWidget {

  final List<ChatListItem> chatListItems = [
    ChatListItem(
      profileURL: "https://randomuser.me/api/portraits/thumb/men/0.jpg",
      personName: "Gregory Walters",
      date: "09:10 am",
      lastMessage: "Make sure you are on time",
    ),
    ChatListItem(
      profileURL: "https://randomuser.me/api/portraits/thumb/men/0.jpg",
      personName: "Gregory Walters",
      date: "09:10 am",
      lastMessage: "Make sure you are on time",
    ),
    ChatListItem(
      profileURL: "https://randomuser.me/api/portraits/thumb/men/0.jpg",
      personName: "Gregory Walters",
      date: "09:10 am",
      lastMessage: "Make sure you are on time",
    ),
    ChatListItem(
      profileURL: "https://randomuser.me/api/portraits/thumb/men/0.jpg",
      personName: "Gregory Walters",
      date: "09:10 am",
      lastMessage: "Make sure you are on time",
    ),
    ChatListItem(
      profileURL: "https://randomuser.me/api/portraits/thumb/men/0.jpg",
      personName: "Gregory Walters",
      date: "09:10 am",
      lastMessage: "Make sure you are on time",
    ),
    ChatListItem(
      profileURL: "https://randomuser.me/api/portraits/thumb/men/0.jpg",
      personName: "Gregory Walters",
      date: "09:10 am",
      lastMessage: "Make sure you are on time",
    ),
    ChatListItem(
      profileURL: "https://randomuser.me/api/portraits/thumb/men/0.jpg",
      personName: "Gregory Walters",
      date: "09:10 am",
      lastMessage: "Make sure you are on time",
    ),
    ChatListItem(
      profileURL: "https://randomuser.me/api/portraits/thumb/men/0.jpg",
      personName: "Gregory Walters",
      date: "09:10 am",
      lastMessage: "Make sure you are on time",
    ),
    ChatListItem(
      profileURL: "https://randomuser.me/api/portraits/thumb/men/0.jpg",
      personName: "Gregory Walters",
      date: "09:10 am",
      lastMessage: "Make sure you are on time",
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: chatListItems.length,
      separatorBuilder: (ctx, i) {
        return Divider();
      },
      itemBuilder: (ctx, i){
        return ListTile(
          title: Text(chatListItems[i].personName),
          subtitle: Text(chatListItems[i].lastMessage),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              i%3==0?Icons.call:Icons.videocam,
              color: primaryColor
              ),
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.grey, 
            backgroundImage: NetworkImage(
              chatListItems[i].profileURL
            ),
          ),
          onTap: () {},
        );
      },
    );
  }
}