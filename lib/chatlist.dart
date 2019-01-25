import 'package:flutter/material.dart';
import 'package:flutter_app_whatpsapp/entity/chatModel.dart';
import 'package:flutter_app_whatpsapp/holder/chatItem.dart';

class ChatList extends StatelessWidget {
  final List<ChatModel> _chats;
  ChatList(this._chats);

  List<ChatItem> _buildChatList() {
    return _chats
        .map((chat) => new ChatItem(chat)).toList();
  }

  @override
  Widget build(BuildContext context) {

    return ListView(
      children: _buildChatList()
    );
  }
}
