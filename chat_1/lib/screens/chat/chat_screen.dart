import 'package:chat_1/entities/message.dart';
import 'package:chat_1/screens/widgets/chat/her_message_bubble.dart';
import 'package:chat_1/screens/widgets/chat/my_message_bubble.dart';
import 'package:chat_1/screens/widgets/shared/message_field_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/chat_provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
        ),
        centerTitle: true,
        title: Text('Mi amor'),
      ),
      body: ChatView(),
    );
  }
}


class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {

    //Crear un objeto tipo provider
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.scrollcontroller,

                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  //return index % 2 ==0 ? HerMessageBubble(): MyMessageBubble();
                  final message = chatProvider.messageList[index];
                  return message.fromWho == FromWho.me ? MyMessageBubble(message: message,) : HerMessageBubble(message: message,);
              },),
            ),
            MessageFieldBox(onvalue: (String value) {
              chatProvider.sendMessage(value);
              //chatProvider.moveScrollToBottom();
            },)
          ],
        ),
      ),
    );
  }
}
