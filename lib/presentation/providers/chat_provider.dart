import 'package:flutter/material.dart';
import 'package:ud5_yes_no_maybe/config/theme/helpers/get_yes_no_answer.dart';
import 'package:ud5_yes_no_maybe/domain/entities/message.dart';


class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController = ScrollController();
  final getYesNoAnswer = GetYesNoAnswer();

  // LISTA DE MENSAJES QUE APARECEN EN EL CHAT
  List <Message> messageList = [
    Message(text: "hola mundo", fromWho: FromWho.me),
    Message(text: "ya has vuelto?", fromWho: FromWho.me),
    Message(text: "aun no?", fromWho: FromWho.me)
  ];

  // Funcion que agrega mensajes a la lista
  Future<void> sendMessage (String text) async{

    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    if (text.endsWith('?')) {
      await herReply();
    }

    notifyListeners();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      moveScrollToBottom();
    });
  }

  Future<void> herReply() async{
    final herMessage = await getYesNoAnswer.getAnswer();
  }

  void moveScrollToBottom(){
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent, 
      duration: const Duration ( milliseconds: 300), 
      curve: Curves.easeOut
    );
  }
}