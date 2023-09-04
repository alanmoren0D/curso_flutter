

import 'package:flutter/material.dart';
import 'package:yes_no_maybe_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_maybe_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier
{

  final ScrollController chatScrollControlle = ScrollController(); 
  final GetYesOrNoAnswer getYesOrNotAnswer = GetYesOrNoAnswer();

  List<Message> messagesList=[
    Message(text: 'Holo owo', fromWho: FromWho.me),
    Message(text: 'haz regresado? owo', fromWho: FromWho.me),
  ];

  Future<void> sendMessage( String text) async
  {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messagesList.add(newMessage);

  if( text.endsWith('?'))
  {
    herReply();
  }
    notifyListeners();
    moveScrollToButton();
  }

  Future<void> herReply() async
  {
    final herMessage = await getYesOrNotAnswer.getAnswer();
    messagesList.add(herMessage);
    notifyListeners();

    moveScrollToButton();
  }

  Future<void> moveScrollToButton() async
  {
    await  Future.delayed(const Duration(milliseconds: 100));
    chatScrollControlle.animateTo(
      chatScrollControlle.position.maxScrollExtent, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeOut
    );
  }
}