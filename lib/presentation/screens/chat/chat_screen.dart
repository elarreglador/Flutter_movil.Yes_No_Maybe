import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:ud5_yes_no_maybe/domain/entities/message.dart";
import "package:ud5_yes_no_maybe/presentation/providers/chat_provider.dart";
import "package:ud5_yes_no_maybe/presentation/screens/shared/message_field_box.dart";
import "package:ud5_yes_no_maybe/presentation/widgets/chat/her_message_bubble.dart";
import "package:ud5_yes_no_maybe/presentation/widgets/chat/my_message_bubble.dart";

class ChatScreen extends StatelessWidget {

  const ChatScreen ({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;


    return Scaffold(
      // AppBar
      appBar: AppBar(
        backgroundColor: colors.primary, //color primario del tema,
        leading: const Padding(
          padding: EdgeInsets.all(7.0),
          child: CircleAvatar(
            // La imagen parece que solo se carga en ciertas circunstancias
            backgroundImage: NetworkImage('https://cdn.20m.es/img2/recortes/2017/03/14/439263-157-118.jpg'),
          ),
        ),
        title: const Text("Persona"),
      ),

      body: const ChatView(), //funcion con la zona del chat
    );
  }
}

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
  });

  // ZONA DONDE SE IRAN MOSTRANDO LOS MENSAJES DEL CHAT
  @override
  Widget build(BuildContext context) {

    // Queda pendiente de cambios en el chatProvider
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea( //evita superponerse a controles ios/android
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];
                  return (message.fromWho == FromWho.hers)
                    ? const HerMessageBubble()
                    : MyMessageBubble( message: message);
                },
              )
            ),
            // CAJA DE TEXTO
            MessageFieldBox(
              onValue: (value) => {
                chatProvider.sendMessage(value),
              } ,
            )
          ],
        ),
      ),
    );
  }
}