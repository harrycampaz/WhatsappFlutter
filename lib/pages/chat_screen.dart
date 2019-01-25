import 'package:flutter/material.dart';
import 'package:flutter_app_whatpsapp/entity/chatModel.dart';
import 'package:flutter_app_whatpsapp/pages/chatMessage.dart';
import 'package:flutter_app_whatpsapp/pages/chats.dart';

class ChatScreen extends StatefulWidget {
  final ChatModel chat;

  ChatScreen(this.chat);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  AnimationController _controller;
  bool _isType = false;
  final List<ChatMessage> messages = <ChatMessage>[];
  TextEditingController _textEditingController;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Row(
        children: <Widget>[
          new CircleAvatar(
            backgroundImage: NetworkImage(widget.chat.imageUri),
          ),
          new Text("    ${widget.chat.name}"),
        ],
      )),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Flexible(
                child: new ListView.builder(
              itemBuilder: (_, int index) => messages[index],
              itemCount: messages.length,
                  reverse: true,
                  padding: EdgeInsets.all(10.0),
            )),
            new Divider(height: 1.0),
            new Container(
              child: _buildTextComposer(),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTextComposer() {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Flexible(
              child: new TextField(
            controller: _textEditingController,
            onChanged: (String text) {
              setState(() {
                _isType = text.length > 0;
              });
            },
                decoration: InputDecoration.collapsed(hintText: " Enviar mensaje"),
          )),
          new Container(
            child: new IconButton(
                icon: new Icon(
                  Icons.send,
                  size: 40,
                  color: _isType ? Theme.of(context).primaryColor : Colors.grey,
                ),
                onPressed: _isType ? () => _handledSubmit(_textEditingController.text) : null
            ),
          )
        ],
      ),
    );
  }

  void _handledSubmit(String text) {
    ChatMessage message = new ChatMessage(
      message: text,
      animationController: new AnimationController(
          duration: new Duration(microseconds: 7000), vsync: this),
      name: widget.chat.name,
    );

    setState(() {
      _isType = false;
      messages.insert(0, message);
      var data = messageData.firstWhere((t) => t.name == widget.chat.name);
      data.content = message.message;
    });

    message.animationController.forward();
    print(text);
    _textEditingController.clear();

  }
}
