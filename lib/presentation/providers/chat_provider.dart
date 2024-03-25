import 'package:flutter/material.dart';
import 'package:ud5_yes_no_maybe/domain/entities/message.dart';


class ChatProvider extends ChangeNotifier{
  // LISTA DE MENSAJES QUE APARECEN EN EL CHAT
  List <Message> messageList = [
    Message(text: "hola mundo", fromWho: FromWho.me),
    Message(text: "ya has vuelto?", fromWho: FromWho.me),
    Message(text: "aun no?", fromWho: FromWho.me)
  ];

  
  Future<void> sendMessage (String text) async{
    // TODO implementar el metodo
  }
}