import 'package:flutter/material.dart';
import 'package:yes_no_maybe_app/presentation/widget/chat/her_message_bubble.dart';
import 'package:yes_no_maybe_app/presentation/widget/chat/my_message_bubble.dart';
import 'package:yes_no_maybe_app/presentation/widget/shared/message_field_box.dart';
 
 class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://pm1.aminoapps.com/6063/016270652ff3fccf1824ab271c95882ff51d61cb_128.jpg'),
          ),
        ),
        title: const Text('El amor de alguién')
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const SafeArea();
  }
}

class SafeArea extends StatelessWidget {
  const SafeArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index)
            {
              return (index % 2 == 0) 
                ? const HerMessageBubble()
                : const MyMessageBubble();
            }
          )
          ),
          const MessageFieldBox()
        ],
      ),
    );
  }
}