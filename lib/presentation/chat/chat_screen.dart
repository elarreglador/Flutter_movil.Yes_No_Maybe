import "package:flutter/material.dart";

class ChatScreen extends StatelessWidget {

  const ChatScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(7.0),
          child: CircleAvatar(
            // La imagen parece que solo se carga en ciertas circunstancias
            backgroundImage: NetworkImage('https://cdn.20m.es/img2/recortes/2017/03/14/439263-157-118.jpg'),
          ),
        ),
        title: const Text("Antonio"),
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
    return SafeArea( //evita superponerse a controles ios/android
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){
                  return Text("Indice $index");
                }
              )
            ),
            const Text("mundo")
          ],
        ),
      ),
    );
  }
}