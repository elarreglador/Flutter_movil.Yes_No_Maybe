import 'package:flutter/material.dart';
import 'package:ud5_yes_no_maybe/domain/entities/message.dart';


class ChatProvider extends ChangeNotifier{
  // LISTA DE MENSAJES QUE APARECEN EN EL CHAT
  List <Message> message = [
    Message(text: "hola mundo", fromWho: FromWho.me),
    Message(text: "ya regresaste?", fromWho: FromWho.me)
  ];

  
  Future<void> sendMessage (String text) async{
    // TODO implementar el metodo
  }
}